#!/usr/bin/env python3
"""Generate Android, iOS, and web icons from the approved Eaglemetry artwork.

Requires Pillow. The source artwork is preserved; only sizing is applied.

Usage:
    python3 scripts/generate_launcher_icons.py
"""

from __future__ import annotations

import json
import pathlib
import sys

from PIL import Image

REPO_ROOT = pathlib.Path(__file__).resolve().parent.parent
ICON_PATH = REPO_ROOT / "assets/branding/eaglemetry-icon.png"
BG_COLOR = (3, 12, 18, 255)  # Dark backdrop for the approved artwork.


def create_adaptive_foreground(artwork: Image.Image, size: int) -> Image.Image:
    canvas = Image.new("RGBA", (size, size), (0, 0, 0, 0))
    # The approved square already includes padding around the eagle and gauge.
    # At 86%, the emblem fits the central 66dp safe circle on a 108dp layer.
    artwork_size = int(size * 0.86)
    scaled = artwork.resize((artwork_size, artwork_size), Image.Resampling.LANCZOS)
    offset = (size - artwork_size) // 2
    canvas.paste(scaled, (offset, offset), scaled)
    return canvas


def create_adaptive_background(size: int) -> Image.Image:
    return Image.new("RGBA", (size, size), BG_COLOR)


def create_full_icon(artwork: Image.Image, size: int) -> Image.Image:
    # Keep the approved composition. iOS requires opaque RGB app icons.
    return artwork.convert("RGB").resize((size, size), Image.Resampling.LANCZOS)


def main() -> int:
    if not ICON_PATH.exists():
        sys.stderr.write(f"Icon artwork not found at {ICON_PATH}\n")
        return 1

    artwork = Image.open(ICON_PATH).convert("RGBA")
    if artwork.width != artwork.height:
        raise ValueError("Icon artwork must be square")

    # 1. Android densities
    android_densities = {
        "mipmap-mdpi": {"legacy": 48, "adaptive": 108},
        "mipmap-hdpi": {"legacy": 72, "adaptive": 162},
        "mipmap-xhdpi": {"legacy": 96, "adaptive": 216},
        "mipmap-xxhdpi": {"legacy": 144, "adaptive": 324},
        "mipmap-xxxhdpi": {"legacy": 192, "adaptive": 432},
    }

    android_roots = [
        REPO_ROOT / "android/app/src/main/res",
        REPO_ROOT / "apps/companion/android/app/src/main/res",
    ]

    for res_dir in android_roots:
        anydpi_dir = res_dir / "mipmap-anydpi-v26"
        anydpi_dir.mkdir(parents=True, exist_ok=True)
        xml_path = anydpi_dir / "ic_launcher.xml"
        xml_content = """<?xml version="1.0" encoding="utf-8"?>
<adaptive-icon xmlns:android="http://schemas.android.com/apk/res/android">
    <background android:drawable="@mipmap/ic_launcher_background" />
    <foreground android:drawable="@mipmap/ic_launcher_foreground" />
</adaptive-icon>
"""
        xml_path.write_text(xml_content)

        for density, sizes in android_densities.items():
            d_dir = res_dir / density
            d_dir.mkdir(parents=True, exist_ok=True)

            legacy_icon = create_full_icon(artwork, sizes["legacy"])
            legacy_icon.save(d_dir / "ic_launcher.png", "PNG")

            bg_icon = create_adaptive_background(sizes["adaptive"])
            bg_icon.save(d_dir / "ic_launcher_background.png", "PNG")

            fg_icon = create_adaptive_foreground(artwork, sizes["adaptive"])
            fg_icon.save(d_dir / "ic_launcher_foreground.png", "PNG")

            # The approved raster has an opaque backdrop, not a monochrome mask.
            # Do not expose the old mascot or a solid square as a themed icon.
            (d_dir / "ic_launcher_monochrome.png").unlink(missing_ok=True)

        print(f"Generated Android icons in {res_dir}")

    # 2. iOS Icons
    ios_iconset_dir = (
        REPO_ROOT
        / "apps/companion/ios/Runner/Assets.xcassets/AppIcon.appiconset"
    )
    contents_path = ios_iconset_dir / "Contents.json"

    if contents_path.exists():
        contents = json.loads(contents_path.read_text())
        for item in contents.get("images", []):
            filename = item.get("filename")
            if not filename:
                continue
            size_str = item.get("size", "0x0")
            scale_str = item.get("scale", "1x")
            base_w, base_h = [float(x) for x in size_str.split("x")]
            scale = float(scale_str.replace("x", ""))
            w = int(round(base_w * scale))
            h = int(round(base_h * scale))

            icon = create_full_icon(artwork, w)
            icon.save(ios_iconset_dir / filename, "PNG")
            print(f"Generated iOS icon {filename} ({w}x{h})")

    # 3. Web/PWA icons. The artwork's existing padding protects the emblem
    # inside the central 80% circle used by maskable icons.
    web_dir = REPO_ROOT / "web"
    for size in (192, 512):
        icon = create_full_icon(artwork, size)
        icon.save(web_dir / "icons" / f"Icon-{size}.png", "PNG")
        icon.save(web_dir / "icons" / f"Icon-maskable-{size}.png", "PNG")
    create_full_icon(artwork, 32).save(web_dir / "favicon.png", "PNG")

    print("All launcher icons successfully generated!")
    return 0


if __name__ == "__main__":
    sys.exit(main())
