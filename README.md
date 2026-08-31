# LyargoOS Artwork

Wallpapers, logos, and themes for [LyargoOS](https://github.com/Meniny/LyargoOS) — a Void Linux based desktop distribution.

## Structure

```
wallpapers-plasma/  - Desktop wallpapers (Plasma 6 format)
logos/              - Product logo (SVG)
splash/             - Boot splash screen (1024x768)
grub/               - GRUB bootloader background (1024x768)
src/                - Source files (Affinity Designer)
kde/                - KDE Plasma theme (color scheme, SDDM, desktop theme)
```

## Wallpapers

Plasma 6 format — each wallpaper is a folder with `metadata.json` + `contents/images/`.

| Wallpaper ID | Description |
|-------------|-------------|
| `LyargoOS` | Default wallpaper |
| `LyargoOS-Dark` | Dark variant (default for KDE) |
| `LyargoOS-Logo` | With LyargoOS logo |
| `LyargoOS-Logo-Dark` | Dark with logo |

## KDE Theme

- **Color scheme**: BreezeDark-based with `#1793d1` accent
- **SDDM login theme**: QML-based (Breeze variant)
- **Desktop theme**: Plasma desktop theme with custom colors

## Boot Assets

| File | Resolution | Used by |
|------|-----------|---------|
| `grub/grub.jpg` | 1024x768 | GRUB + isolinux background |
| `splash/splash.jpg` | 1024x768 | Boot splash |

## Packaging

Consumed by [lyargoos-repo](https://github.com/Meniny/LyargoOS-Repo) as XBPS packages:

- `lyargoos-artwork` — wallpapers, logos, splash, GRUB background
- `lyargoos-kde-theme` — KDE color scheme, SDDM theme, desktop theme

## Install

```sh
make install DESTDIR=/path/to/staging PREFIX=/usr
```

## License

Artwork: CC-BY-4.0
Source files in `src/` are project files and not covered by this license.
