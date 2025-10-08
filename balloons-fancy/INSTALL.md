# Installation Guide for Balloons Fancy 🎈✨

## Quick Start

Follow these steps to get Balloons Fancy up and running:

### Step 1: Build and Install the macOS App

```bash
cd /Users/loudog/code/extensions/balloons-fancy/BalloonsApp
./build.sh
cp -r build/BalloonsApp.app /Applications/
```

The app is already built and installed! ✅

### Step 2: Open Raycast

1. Open Raycast (⌘ + Space or your configured hotkey)
2. Type "Balloons Fancy"
3. Press Enter

### Step 3: Enjoy! 🎉

Balloons will appear as a system-wide overlay across your entire screen and automatically disappear after 10 seconds.

## Troubleshooting

### App not launching?

If you get an error that the app can't be opened:

1. Go to **System Settings → Privacy & Security**
2. Look for a message about "BalloonsApp" being blocked
3. Click "Open Anyway"

Or run this command to remove the quarantine flag:
```bash
xattr -cr /Applications/BalloonsApp.app
```

### Extension not showing in Raycast?

Make sure the dev server is running:
```bash
cd /Users/loudog/code/extensions/balloons-fancy
npm run dev
```

## Testing the App Directly

You can also test the app directly without Raycast:

```bash
open /Applications/BalloonsApp.app
```

Or run it from the command line to see debug output:
```bash
/Applications/BalloonsApp.app/Contents/MacOS/BalloonsApp
```

## Features

- ✨ Transparent system-wide overlay
- 🎨 30 colorful balloons with random positions
- 🎭 Realistic animations (floating, drifting, swaying strings)
- ⚡ Native Swift performance
- 🚀 Auto-closes after 10 seconds

## How It's Different from "Balloons"

| Feature | Balloons | Balloons Fancy |
|---------|----------|----------------|
| Display Method | Browser window | System overlay |
| Setup Required | None | Build & install app |
| User Experience | Opens new tab | Seamless overlay |
| Performance | Good | Excellent |
| Interference | Requires clicking away | None |

## Next Steps

Try it out! Open Raycast and type "Balloons Fancy" to see the magic! 🎈✨
