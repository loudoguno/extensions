# Visual Effects for Raycast 🎈✨🎆

Celebrate with **system-wide visual effects**! This extension uses a native macOS app to display beautiful animated effects across your entire screen.

![Platform](https://img.shields.io/badge/Platform-macOS-blue) ![Swift](https://img.shields.io/badge/Swift-5.0-orange) ![Raycast](https://img.shields.io/badge/Raycast-Extension-red)

## Available Effects

### 🎈 Balloons Fancy
- 50 colorful balloons with 24 vibrant colors
- Variable sizes (60% to 150%)
- Smooth falling animation with horizontal drift
- Duration: ~12 seconds

### 🎆 Fireworks
- 20-25 explosive firework bursts
- 80-120 particles per firework (BIG explosions!)
- 350px explosion radius
- Radiating particle animations with fade-out
- System sound effects (Pop & Funk sounds)
- Duration: ~8 seconds

**Future Improvements:**
- More impressive explosion patterns (chrysanthemum, willow, palm, etc.)
- Custom firework sound effects with realistic boom and crackle
- Varied explosion timing (rockets launching, then bursting)
- Trail effects as fireworks rise
- Multiple burst types per show

### ❄️ Snow (Blizzard Mode!)
- 500-700 snowflakes for complete whiteout conditions
- Beautiful 6-pointed snowflake design with branches
- Variable sizes (30% to 200%)
- Fast blizzard speed (3-7 second fall)
- Extreme wind drift (±400 pixels)
- Rapid rotation in wind gusts
- Duration: ~10 seconds

**Future Improvements:**
- Gentle snow mode option (slower, fewer flakes)
- Accumulation effect at bottom of screen
- Wind sound effects (howling, gusts)
- Different snowflake patterns

## Features

- 🖥️ **System-wide overlay**: Effects appear on top of all windows
- 🎨 **Multiple effects**: Balloons, fireworks, and snow blizzard!
- ✨ **Unique every time**: Each trigger creates a completely different pattern
- 🎭 **Transparent overlay**: Doesn't interfere with your work
- ⚡ **Native performance**: Built with Swift/SwiftUI for 60fps animation
- 🚀 **Auto-closes**: Disappears after animation completes
- 🔌 **Extensible**: Easy to add new visual effects

## What Makes It Special?

Unlike browser-based animations, this extension:
- Creates a native macOS overlay window (like the built-in Raycast confetti)
- Appears on top of ALL windows and spaces
- Uses native Swift/SwiftUI for buttery-smooth animations
- Supports multiple visual effects from a single app
- Provides true system-wide celebration effects

## Installation

> **📝 IMPORTANT FOR MULTI-MACHINE SETUP:**
> This project can be synced between machines via git. When you pull on a new machine, simply run the installation steps below. The app name stays as "BalloonsApp" for compatibility, but it supports multiple effects!

### Quick Setup (All-in-One)

```bash
# From the balloons-fancy directory:
cd BalloonsApp && ./build.sh && cp -r build/BalloonsApp.app /Applications/ && cd .. && npm install && npm run dev
```

### Step-by-Step

**1. Build the macOS App**
```bash
cd /Users/loudog/code/extensions/balloons-fancy/BalloonsApp
./build.sh
cp -r build/BalloonsApp.app /Applications/
```

**2. Install Raycast Extension**
```bash
cd /Users/loudog/code/extensions/balloons-fancy
npm install
npm run dev
```

## Usage

### Balloons
1. Open Raycast (⌘ + Space)
2. Type "Balloons Fancy"
3. Press Enter
4. Watch 50 colorful balloons fall! 🎈

### Fireworks
1. Open Raycast (⌘ + Space)
2. Type "Fireworks"
3. Press Enter
4. Watch the fireworks explode! 🎆

### Snow
1. Open Raycast (⌘ + Space)
2. Type "Snow"
3. Press Enter
4. Experience a complete whiteout blizzard! ❄️💨

**Pro tip**: Trigger effects multiple times for spectacular displays!

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
│   ├── BalloonsApp.swift       # Main app with effect routing
│   ├── BalloonsView.swift      # Balloons animation view
│   ├── FireworksView.swift     # Fireworks animation view
│   ├── SnowView.swift          # Snow/blizzard animation view
│   ├── Info.plist              # App configuration
│   └── build.sh                # Build script
├── src/
│   ├── balloons-fancy.tsx      # Balloons Raycast command
│   ├── fireworks.tsx           # Fireworks Raycast command
│   └── snow.tsx                # Snow Raycast command
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

## Adding New Effects

Want to add a new effect? Here's how:

1. **Create a new SwiftUI view** in `BalloonsApp/` (e.g., `ConfettiView.swift`)
2. **Add it to the enum** in `BalloonsApp.swift`:
   ```swift
   enum EffectType: String {
       case balloons
       case fireworks
       case confetti  // new!
   }
   ```
3. **Add the case to the switch** in `launchEffect()`:
   ```swift
   case .confetti:
       contentView = ConfettiView()
       duration = 10
   ```
4. **Update `build.sh`** to compile the new file
5. **Create a new Raycast command** in `src/confetti.tsx`
6. **Add to `package.json`** commands array
7. **Rebuild and reinstall**: `./build.sh && cp -r build/BalloonsApp.app /Applications/`

## Future Enhancement Ideas

### New Effects
- [x] Snow/Blizzard ❄️ (DONE!)
- [ ] Confetti effect
- [ ] Hearts floating up
- [ ] Shooting stars
- [ ] Sparkles/glitter
- [ ] Falling leaves (autumn theme)
- [ ] Rain/storm effect

### Effect Improvements
**Fireworks:**
- [ ] More realistic explosion patterns (chrysanthemum, willow, palm, peony)
- [ ] Custom high-quality sound effects (boom, crackle, whistle)
- [ ] Rocket launch trails before explosions
- [ ] Varied timing (launch → rise → burst)
- [ ] Different burst colors per explosion layer

**Snow:**
- [ ] Gentle snow mode option (slower, fewer flakes)
- [ ] Accumulation effect at bottom of screen
- [ ] Wind sound effects (howling, gusts)
- [ ] Different snowflake patterns

### General Features
- [ ] Better sound effects for all animations (high priority!)
- [ ] Configurable settings (count, speed, colors)
- [ ] Multi-monitor support
- [ ] Keyboard shortcuts to trigger effects
- [ ] Custom color schemes

## Credits

Built with ❤️ using:
- Swift 5
- SwiftUI
- Raycast API
- macOS AppKit

---

**Enjoy celebrating with falling balloons!** 🎈✨

Try triggering it multiple times for spectacular rainbow effects!
