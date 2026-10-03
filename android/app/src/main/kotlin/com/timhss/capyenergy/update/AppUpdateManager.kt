package com.timhss.capyenergy.update

import android.content.Context
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import android.content.pm.Signature
import com.timhss.capyenergy.roadcast.LocalAdbShell
import java.io.ByteArrayOutputStream
import java.io.File
import java.io.FileOutputStream
import java.net.HttpURLConnection
import java.net.URL
import java.security.MessageDigest

data class AppUpdateStatus(
    val checked: Boolean,
    val updateAvailable: Boolean,
    val compatible: Boolean,
    val installedVersionName: String,
    val installedVersionCode: Long,
    val availableVersionName: String? = null,
    val availableVersionCode: Long? = null,
    val requiresReflash: Boolean = false,
    val installScheduled: Boolean = false,
    val changelog: List<AppChangelogEntry> = emptyList(),
    val error: String? = null
) {
    fun toMap(): Map<String, Any?> = mapOf(
        "checked" to checked,
        "updateAvailable" to updateAvailable,
        "compatible" to compatible,
        "installedVersionName" to installedVersionName,
        "installedVersionCode" to installedVersionCode,
        "availableVersionName" to availableVersionName,
        "availableVersionCode" to availableVersionCode,
        "requiresReflash" to requiresReflash,
        "installScheduled" to installScheduled,
        "changelog" to changelog.map(AppChangelogEntry::toMap),
        "error" to error
    )
}

internal interface AppUpdateDownloader {
    fun read(url: URL, maxBytes: Long): ByteArray
    fun download(
        url: URL,
        destination: File,
        expectedBytes: Long,
        onProgress: ((bytesRead: Long, totalBytes: Long) -> Unit)? = null
    )
}

internal class HttpAppUpdateDownloader : AppUpdateDownloader {
    override fun read(url: URL, maxBytes: Long): ByteArray {
        val connection = open(url)
        return try {
            val declared = connection.contentLengthLong
            require(declared <= maxBytes || declared < 0) {
                "App update manifest is too large"
            }
            val output = ByteArrayOutputStream()
            connection.inputStream.use { input ->
                val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                var total = 0L
                while (true) {
                    val read = input.read(buffer)
                    if (read < 0) break
                    total += read
                    require(total <= maxBytes) { "App update manifest is too large" }
                    output.write(buffer, 0, read)
                }
            }
            output.toByteArray()
        } finally {
            connection.disconnect()
        }
    }

    override fun download(
        url: URL,
        destination: File,
        expectedBytes: Long,
        onProgress: ((bytesRead: Long, totalBytes: Long) -> Unit)?
    ) {
        val connection = open(url)
        try {
            val declared = connection.contentLengthLong
            require(declared == expectedBytes || declared < 0) {
                "App update download size does not match the manifest"
            }
            val totalToReport = if (declared > 0) declared else expectedBytes
            var total = 0L
            connection.inputStream.use { input ->
                FileOutputStream(destination).use { output ->
                    val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
                    while (true) {
                        val read = input.read(buffer)
                        if (read < 0) break
                        total += read
                        require(total <= expectedBytes) {
                            "App update download exceeded the manifest size"
                        }
                        output.write(buffer, 0, read)
                        onProgress?.invoke(total, totalToReport)
                    }
                    output.fd.sync()
                }
            }
            require(total == expectedBytes) { "App update download is incomplete" }
        } finally {
            connection.disconnect()
        }
    }

    private fun open(url: URL): HttpURLConnection {
        require(url.protocol == "https") { "App updates require HTTPS" }
        return (url.openConnection() as HttpURLConnection).apply {
            connectTimeout = CONNECT_TIMEOUT_MILLIS
            readTimeout = READ_TIMEOUT_MILLIS
            instanceFollowRedirects = true
            useCaches = false
            setRequestProperty("Accept", "application/octet-stream, application/json")
            setRequestProperty("User-Agent", "Capy-App-Updater")
            connect()
            val status = responseCode
            require(this.url.protocol == "https") {
                "App update download redirected to an insecure URL"
            }
            check(status in 200..299) {
                "App update download failed with HTTP $status"
            }
        }
    }

    private companion object {
        const val CONNECT_TIMEOUT_MILLIS = 10_000
        const val READ_TIMEOUT_MILLIS = 60_000
    }
}

/**
 * The background watchdog and the Settings "Install" button both call
 * [AppUpdateManager.downloadAndInstall] against the same staged APK path and
 * cache file. This gate keeps two concurrent installs from corrupting each
 * other's download or racing the same `pm install -r`; the loser fails with a
 * clear error instead of the file underneath the winner changing mid-copy.
 */
internal object AppUpdateInstallGate {
    private val busy = java.util.concurrent.atomic.AtomicBoolean(false)
    private val scheduledVersionCode = java.util.concurrent.atomic.AtomicLong(NONE)

    fun tryAcquire(): Boolean = busy.compareAndSet(false, true)

    fun release() {
        busy.set(false)
    }

    /**
     * `pm install -r` is scheduled, not awaited: the process that runs it
     * replaces this one. Until that happens the installed `versionCode` is
     * still the old one, so an unguarded watchdog would download and stage the
     * same APK again every minute. Remembering what was scheduled makes the
     * background retry stop; a manual tap in Settings is deliberately not
     * gated on this, so the owner can always force another attempt.
     */
    fun markScheduled(versionCode: Long) {
        scheduledVersionCode.set(versionCode)
    }

    fun isScheduled(versionCode: Long?): Boolean =
        versionCode != null && scheduledVersionCode.get() == versionCode

    fun forgetScheduled() {
        scheduledVersionCode.set(NONE)
    }

    private const val NONE = -1L
}

class AppUpdateManager internal constructor(
    context: Context,
    private val activeSessionProvider: () -> String? = { null },
    private val downloader: AppUpdateDownloader = HttpAppUpdateDownloader(),
    private val localAdb: LocalAdbShell = LocalAdbShell(),
    private val manifestUrl: String = com.timhss.capyenergy.BuildConfig.APP_UPDATE_MANIFEST_URL,
) {
    private val appContext = context.applicationContext

    fun localStatus(): AppUpdateStatus {
        val installed = installedPackage()
        return AppUpdateStatus(
            checked = false,
            updateAvailable = false,
            compatible = true,
            installedVersionName = installed.versionName.orEmpty(),
            installedVersionCode = installed.longVersionCode
        )
    }

    fun check(): AppUpdateStatus {
        val installed = installedPackage()
        val manifest = fetchManifest()
        val compatibilityError = compatibilityError(manifest, installed)
        return status(
            installed = installed,
            manifest = manifest,
            compatibilityError = compatibilityError
        )
    }

    fun downloadAndInstall(beforeInstall: () -> Unit): AppUpdateStatus {
        check(AppUpdateInstallGate.tryAcquire()) {
            "An app update install is already in progress"
        }
        try {
            requireNoActiveSession()
            val installed = installedPackage()
            val manifest = fetchManifest()
            compatibilityError(manifest, installed)?.let(::error)
            require(manifest.versionCode > installed.longVersionCode) {
                "Eaglemetry is already up to date"
            }

            val candidate = File(appContext.cacheDir, CANDIDATE_FILE)
            try {
                downloader.download(URL(manifest.apkUrl), candidate, manifest.sizeBytes)
                require(candidate.isFile && candidate.length() == manifest.sizeBytes) {
                    "Downloaded app update APK size does not match the manifest"
                }
                require(sha256(candidate) == manifest.sha256) {
                    "App update APK checksum does not match the manifest"
                }
                validateArchive(candidate, manifest, installed)
                requireNoActiveSession()
                beforeInstall()
                requireNoActiveSession()
                val stageOutput =
                    localAdb.execute(stageCommand(candidate.absolutePath, manifest.sha256))
                check(stageOutput.lineSequence().any { it.trim() == STAGED_MARKER }) {
                    stageOutput.ifBlank { "Failed to stage app update through local ADB" }
                }
                val scheduleOutput = localAdb.execute(scheduleInstallCommand())
                check(scheduleOutput.lineSequence().any { it.trim() == SCHEDULED_MARKER }) {
                    scheduleOutput.ifBlank { "Failed to schedule app update through local ADB" }
                }
                AppUpdateInstallGate.markScheduled(manifest.versionCode)
                return status(installed, manifest, compatibilityError = null).copy(
                    installScheduled = true
                )
            } finally {
                candidate.delete()
            }
        } finally {
            AppUpdateInstallGate.release()
        }
    }

    private fun fetchManifest(): AppUpdateManifest {
        require(manifestUrl.isNotBlank()) {
            "App update channel is not configured (APP_UPDATE_MANIFEST_URL is empty)"
        }
        val json = downloader.read(URL(manifestUrl), MAX_MANIFEST_BYTES)
            .toString(Charsets.UTF_8)
        return AppUpdateManifest.parse(json)
    }

    private fun requireNoActiveSession() {
        activeSessionProvider()?.let { type ->
            error("Eaglemetry cannot update while a $type session is active")
        }
    }

    private fun compatibilityError(
        manifest: AppUpdateManifest,
        installed: PackageInfo
    ): String? = when {
        isLocalBuild(installed) ->
            "A local build does not update itself"
        manifest.requiresReflash ->
            "This release must be installed with scripts/install.sh"
        manifest.versionCode < installed.longVersionCode ->
            "Latest published build is older than the installed build"
        else -> null
    }

    private fun status(
        installed: PackageInfo,
        manifest: AppUpdateManifest,
        compatibilityError: String?
    ) = AppUpdateStatus(
        checked = true,
        updateAvailable = compatibilityError == null &&
            manifest.versionCode > installed.longVersionCode,
        compatible = compatibilityError == null,
        installedVersionName = installed.versionName.orEmpty(),
        installedVersionCode = installed.longVersionCode,
        availableVersionName = manifest.versionName,
        availableVersionCode = manifest.versionCode,
        requiresReflash = manifest.requiresReflash,
        changelog = manifest.changelog,
        error = compatibilityError
    )

    @Suppress("DEPRECATION")
    private fun installedPackage(): PackageInfo =
        packageInfoWithSigningFallback(
            modern = {
                appContext.packageManager.getPackageInfo(
                    appContext.packageName,
                    PackageManager.GET_SIGNING_CERTIFICATES
                )
            },
            legacy = {
                appContext.packageManager.getPackageInfo(
                    appContext.packageName,
                    PackageManager.GET_SIGNATURES
                )
            }
        ) ?: error("Installed app package information is unavailable")

    @Suppress("DEPRECATION")
    private fun archivePackage(file: File): PackageInfo? =
        packageInfoWithSigningFallback(
            modern = {
                appContext.packageManager.getPackageArchiveInfo(
                    file.absolutePath,
                    PackageManager.GET_SIGNING_CERTIFICATES
                )
            },
            legacy = {
                appContext.packageManager.getPackageArchiveInfo(
                    file.absolutePath,
                    PackageManager.GET_SIGNATURES
                )
            }
        )

    private fun validateArchive(
        file: File,
        manifest: AppUpdateManifest,
        installed: PackageInfo
    ) {
        val archive = archivePackage(file)
            ?: error("Downloaded app update is not a valid APK")
        require(archive.packageName == AppUpdateManifest.PACKAGE_NAME) {
            "Downloaded APK has the wrong package name"
        }
        require(archive.longVersionCode == manifest.versionCode) {
            "Downloaded APK version code does not match the manifest"
        }
        require(archive.versionName == manifest.versionName) {
            "Downloaded APK version name does not match the manifest"
        }
        val archiveSigning = signingIdentity(archive, "downloaded APK")
        val installedSigning = signingIdentity(installed, "installed app")
        require(isCompatibleUpdateSigner(archiveSigning, installedSigning)) {
            "Downloaded APK signing certificate does not match the installed app"
        }
    }

    private fun sha256(file: File): String {
        val digest = MessageDigest.getInstance("SHA-256")
        file.inputStream().use { input ->
            val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
            while (true) {
                val read = input.read(buffer)
                if (read < 0) break
                if (read > 0) digest.update(buffer, 0, read)
            }
        }
        return digest.digest().joinToString("") { byte -> "%02x".format(byte) }
    }

    companion object {
        /**
         * What `scripts/install.sh` stamps on the version name of a build made
         * from the working tree.
         *
         * Such a build is not on the release channel, so its version code has
         * no relation to the published one and is usually lower. An updater
         * that only compares the two numbers therefore replaces the build
         * under test with whatever is published, a minute after it starts —
         * and a published build that is older by schema replaces the database
         * as well, because Room falls back to a destructive migration on a
         * downgrade. The suffix is the mark that stops that.
         */
        const val LOCAL_BUILD_SUFFIX = "-debug"

        /** Whether this build came from the working tree, not the channel. */
        internal fun isLocalBuild(installed: PackageInfo): Boolean =
            installed.versionName.orEmpty().endsWith(LOCAL_BUILD_SUFFIX)

        private const val MAX_MANIFEST_BYTES = 64L * 1024L
        private const val CANDIDATE_FILE = "capy-update.apk"
        private const val STAGED_APK = "/data/local/tmp/capy-update.apk"
        private const val INSTALL_LOG = "/data/local/tmp/capy-update.log"
        private const val STAGED_MARKER = "APP_UPDATE_STAGED"
        private const val SCHEDULED_MARKER = "APP_UPDATE_SCHEDULED"

        @Suppress("DEPRECATION")
        internal fun signingIdentity(info: PackageInfo, source: String): AppSigningIdentity {
            info.signingInfo?.let { signingInfo ->
                val current = digests(signingInfo.apkContentsSigners)
                val history = if (signingInfo.hasMultipleSigners()) {
                    current
                } else {
                    digests(signingInfo.signingCertificateHistory)
                }
                require(current.isNotEmpty() && history.containsAll(current)) {
                    "App signing information is incomplete for the $source"
                }
                return AppSigningIdentity(
                    current = current,
                    history = history,
                    hasMultipleSigners = signingInfo.hasMultipleSigners()
                )
            }

            val legacy = digests(info.signatures)
            require(legacy.isNotEmpty()) {
                "App signing information is unavailable for the $source"
            }
            return AppSigningIdentity(
                current = legacy,
                history = legacy,
                hasMultipleSigners = legacy.size > 1
            )
        }

        internal fun isCompatibleUpdateSigner(
            candidate: AppSigningIdentity,
            installed: AppSigningIdentity
        ): Boolean {
            if (candidate.hasMultipleSigners || installed.hasMultipleSigners) {
                return candidate.hasMultipleSigners == installed.hasMultipleSigners &&
                    candidate.current == installed.current
            }
            val installedCurrent = installed.current.singleOrNull() ?: return false
            return installedCurrent in candidate.history
        }

        private fun digests(signatures: Array<Signature>?): Set<String> =
            signatures.orEmpty().mapTo(mutableSetOf()) { signature ->
                MessageDigest.getInstance("SHA-256")
                    .digest(signature.toByteArray())
                    .joinToString("") { byte -> "%02x".format(byte) }
            }

        private fun packageInfoWithSigningFallback(
            modern: () -> PackageInfo?,
            legacy: () -> PackageInfo?
        ): PackageInfo? {
            val modernInfo = runCatching(modern).getOrNull()
            if (modernInfo != null && hasSigningIdentity(modernInfo)) return modernInfo

            val legacyInfo = runCatching(legacy).getOrNull()
            if (legacyInfo != null && hasSigningIdentity(legacyInfo)) return legacyInfo

            return modernInfo ?: legacyInfo
        }

        @Suppress("DEPRECATION")
        private fun hasSigningIdentity(info: PackageInfo): Boolean =
            info.signingInfo?.apkContentsSigners?.isNotEmpty() == true ||
                info.signatures?.isNotEmpty() == true

        internal fun stageCommand(candidatePath: String, expectedSha256: String): String =
            "set -e; " +
                "cp '${shellQuote(candidatePath)}' $STAGED_APK; " +
                "chmod 0644 $STAGED_APK; " +
                "actual=\$(sha256sum $STAGED_APK | cut -d ' ' -f 1); " +
                "[ \"\$actual\" = '$expectedSha256' ] || exit 24; " +
                "echo $STAGED_MARKER"

        internal fun scheduleInstallCommand(): String =
            "sh -c '(sleep 2; " +
                "pm install -r $STAGED_APK > $INSTALL_LOG 2>&1; status=\$?; " +
                "rm -f $STAGED_APK; " +
                "if [ \$status -eq 0 ]; then " +
                "am start -n ${AppUpdateManifest.PACKAGE_NAME}/.MainActivity " +
                ">> $INSTALL_LOG 2>&1; fi) " +
                "</dev/null >/dev/null 2>&1 &'; echo $SCHEDULED_MARKER"

        private fun shellQuote(value: String): String = value.replace("'", "'\\''")
    }
}

internal data class AppSigningIdentity(
    val current: Set<String>,
    val history: Set<String>,
    val hasMultipleSigners: Boolean
) {
    init {
        require(current.isNotEmpty()) { "Current app signer set is empty" }
        require(history.containsAll(current)) { "App signer history is incomplete" }
        require(!hasMultipleSigners || history == current) {
            "Multiple app signers cannot use rotation history"
        }
    }
}
