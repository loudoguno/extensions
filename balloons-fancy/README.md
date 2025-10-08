# Balloons Fancy 🎈✨

Celebrate with **system-wide overlay balloons**! This extension uses a native macOS app to display beautiful animated balloons falling across your entire screen.

![Balloons Fancy Demo](https://img.shields.io/badge/Platform-macOS-blue) ![Swift](https://img.shields.io/badge/Swift-5.0-orange) ![Raycast](https://img.shields.io/badge/Raycast-Extension-red)

## Features

- 🖥️ **System-wide overlay**: Balloons appear on top of all windows
- 🎨 **50 colorful balloons**: 24 vibrant colors across the rainbow
- 📏 **Varying sizes**: Each balloon is randomly sized (60% to 150%)
- 🌊 **Smooth falling motion**: Balloons drift left/right as they fall
- ✨ **Unique every time**: Each trigger creates a completely different pattern
- 🎭 **Transparent overlay**: Doesn't interfere with your work
- ⚡ **Native performance**: Built with Swift/SwiftUI for 60fps animation
- 🚀 **Auto-closes**: Disappears after all balloons exit (12 seconds)

## What Makes It "Fancy"?

Unlike the simple "Balloons" extension that opens a browser tab, **Balloons Fancy**:
- Creates a native macOS overlay window (like the built-in Raycast confetti)
- Appears on top of ALL windows and spaces
- Uses native Swift/SwiftUI for buttery-smooth animations
- Provides true system-wide celebration effects

## Installation

### 1. Build the macOS App

```bash
cd /Users/loudog/code/extensions/balloons-fancy/BalloonsApp
./build.sh
cp -r build/BalloonsApp.app /Applications/
```

### 2. Install Raycast Extension

```bash
cd /Users/loudog/code/extensions/balloons-fancy
npm install
npm run dev
```

## Usage

1. Open Raycast (⌘ + Space)
2. Type "Balloons Fancy"
3. Press Enter
4. Watch 50 colorful balloons fall across your screen! 🎈

**Pro tip**: Trigger it multiple times to see different color combinations and patterns!

## Animation Details

### Balloon Properties (All Randomized)
- **Color**: 24 colors (reds, oranges, yellows, greens, blues, purples, pinks)
- **Size**: 60% to 150% of base size (60x80 pixels)
- **Starting position**: Anywhere across screen width
- **Fall speed**: 5-10 seconds
- **Horizontal drift**: -150 to +150 pixels
- **Delay**: 0-2 seconds before starting

### Technical Details
- **Count**: 50 balloons per trigger
- **Duration**: 12 seconds total (ensures all balloons exit screen)
- **Animation**: Linear falling with horizontal drift
- **Window level**: Floating (appears above all apps)
- **Mouse events**: Ignored (doesn't block clicks)

## How It Works

### Architecture

This extension consists of two parts:

**1. BalloonsApp.app** - Native macOS App
- Built with Swift + SwiftUI
- Creates borderless, transparent overlay window
- Renders 50 animated balloons
- Runs as accessory app (no dock icon)
- Auto-terminates after animation

**2. Raycast Extension** - TypeScript Command
- No-view mode for instant execution
- Launches BalloonsApp via `open -a`
- Shows HUD confirmation

### File Structure

```
balloons-fancy/
├── BalloonsApp/
│   ├── BalloonsApp.swift       # Main app and window setup
│   ├── BalloonsView.swift      # SwiftUI animation views
│   ├── Info.plist              # App configuration
│   └── build.sh                # Build script
├── src/
│   └── balloons-fancy.tsx      # Raycast extension
├── package.json
├── tsconfig.json
└── README.md
```

## Comparison: Balloons vs Balloons Fancy

| Feature | Balloons | Balloons Fancy |
|---------|----------|----------------|
| Display | Browser tab | System overlay |
| Setup | None | Build macOS app |
| Performance | Good (CSS) | Excellent (native) |
| Balloon count | 30 | 50 |
| Colors | 8 | 24 |
| Sizes | Fixed | Variable |
| Integration | Opens tab | Seamless overlay |
| Animation | CSS keyframes | SwiftUI |
| Direction | Falls from top | Falls from top |
| Has strings | No | No |

## Development

### Rebuilding the App

If you make changes to the Swift code:

```bash
cd BalloonsApp
./build.sh
cp -r build/BalloonsApp.app /Applications/
xattr -cr /Applications/BalloonsApp.app  # Remove quarantine
```

### Debugging

To see console output:
```bash
/Applications/BalloonsApp.app/Contents/MacOS/BalloonsApp
```

### Customization

Want to tweak the animation? Edit `BalloonsView.swift`:
- **Balloon count**: Line 91 - Change `(0..<50)`
- **Colors**: Lines 53-85 - Add/remove colors
- **Size range**: Line 98 - Adjust `0.6...1.5`
- **Speed range**: Line 96 - Adjust `5...10`
- **Duration**: `BalloonsApp.swift` line 66 - Adjust `12`

## Troubleshooting

### App won't open?
```bash
# Remove quarantine flag
xattr -cr /Applications/BalloonsApp.app
```

Or go to **System Settings → Privacy & Security** and click "Open Anyway"

### Extension not showing?
Make sure dev server is running:
```bash
npm run dev
```

### Balloons not visible?
- Check that the app is installed: `ls /Applications/BalloonsApp.app`
- Run directly to see errors: `/Applications/BalloonsApp.app/Contents/MacOS/BalloonsApp`

## Future Enhancements

- [ ] Sound effects (balloon pops, whooshes)
- [ ] Custom URL scheme (`balloons://trigger`)
- [ ] Configurable settings (count, speed, colors)
- [ ] Different animation styles (spinning, wobbling)
- [ ] Balloon burst effect on click
- [ ] Multi-monitor support

## Credits

Built with ❤️ using:
- Swift 5
- SwiftUI
- Raycast API
- macOS AppKit

---

**Enjoy celebrating with falling balloons!** 🎈✨

Try triggering it multiple times for spectacular rainbow effects!
