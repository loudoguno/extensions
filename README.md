# Raycast Extensions 🚀

A collection of custom Raycast extensions for enhanced productivity and fun!

## Extensions

### 🎈 Balloons
A simple celebration extension that displays colorful animated balloons in your browser.

**Features:**
- Browser-based HTML/CSS animations
- 30 balloons with 8 vibrant colors
- Zero setup required
- Auto-closes after animation

[View Documentation →](./balloons/)

---

### 🎈✨ Balloons Fancy
An advanced celebration extension with native macOS system-wide overlay balloons.

**Features:**
- System-wide overlay (appears over all apps)
- 50 balloons with 24 vibrant colors
- Variable balloon sizes (60-150%)
- Native Swift/SwiftUI performance
- Unique random pattern each time
- True confetti-style experience

[View Documentation →](./balloons-fancy/)

---

## Quick Comparison

| Feature | Balloons | Balloons Fancy |
|---------|----------|----------------|
| **Setup** | None | Build macOS app |
| **Display** | Browser tab | System overlay |
| **Balloon Count** | 30 | 50 |
| **Colors** | 8 | 24 |
| **Sizes** | Fixed | Variable |
| **Performance** | Good | Excellent |
| **Animation** | CSS | Swift/SwiftUI |
| **Direction** | Falls from top | Falls from top |

## Installation

### Balloons (Simple)
```bash
cd balloons
npm install
npm run dev
```

### Balloons Fancy (Advanced)
```bash
# 1. Build the native macOS app
cd balloons-fancy/BalloonsApp
./build.sh
cp -r build/BalloonsApp.app /Applications/

# 2. Install the extension
cd ..
npm install
npm run dev
```

## Usage

Once installed, open Raycast and type:
- **"Balloons"** - for the simple browser-based version
- **"Balloons Fancy"** - for the native overlay version

## Development

Both extensions are built with:
- TypeScript
- Raycast API
- Node.js

**Balloons Fancy** additionally uses:
- Swift 5
- SwiftUI
- macOS AppKit

## Future Extensions

Have ideas for more extensions? Check out the ideas file for inspiration!

## Credits

Built with ❤️ by loudog

---

🎈 **Enjoy celebrating your achievements!** 🎈
