# Eaglemetry app icon

`eaglemetry-icon.png` is the original artwork selected by the project owner.
Keep this source unchanged. The generator resizes it without redrawing the eagle,
gauge, waveform, colors, or rounded tile.

With Python and Pillow installed, run from the repository root:

```sh
python3 scripts/generate_launcher_icons.py
```

This writes Android launcher resources for the car and Companion (five densities),
all iOS Companion AppIcon sizes listed in Contents.json, and web/PWA icons.
The iOS outputs are opaque RGB. Android adaptive foregrounds include transparent
outer padding; their dark backgrounds are separate resources. The emblem stays
inside the adaptive safe circle. Web maskable icons retain the source padding.

Themed monochrome icons are not supplied yet: the approved raster has an opaque
background, so its alpha would produce a square, not an eagle silhouette.
The obsolete Capy monochrome resources and their references have been removed.
