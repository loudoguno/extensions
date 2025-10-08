import SwiftUI
import AppKit

@main
struct BalloonsApp: App {
    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        Settings {
            EmptyView()
        }
    }
}

class AppDelegate: NSObject, NSApplicationDelegate {
    var window: NSWindow?

    func applicationDidFinishLaunching(_ notification: Notification) {
        print("BalloonsApp: Application launched")

        // Hide from dock
        NSApp.setActivationPolicy(.accessory)
        print("BalloonsApp: Activation policy set")

        // Launch balloons
        launchBalloons()
        print("BalloonsApp: Balloons launched")
    }

    func launchBalloons() {
        print("BalloonsApp: Getting screen dimensions")

        // Get screen dimensions
        guard let screen = NSScreen.main else {
            print("BalloonsApp: ERROR - No main screen found")
            return
        }
        let screenFrame = screen.frame
        print("BalloonsApp: Screen frame: \(screenFrame)")

        // Create transparent overlay window
        window = NSWindow(
            contentRect: screenFrame,
            styleMask: [.borderless],
            backing: .buffered,
            defer: false
        )

        window?.isOpaque = false
        window?.backgroundColor = .clear
        window?.level = .floating
        window?.ignoresMouseEvents = true
        window?.collectionBehavior = [.canJoinAllSpaces, .fullScreenAuxiliary]

        print("BalloonsApp: Window created and configured")

        // Set up the SwiftUI view
        let contentView = BalloonsView()
        window?.contentView = NSHostingView(rootView: contentView)
        window?.makeKeyAndOrderFront(nil)

        print("BalloonsApp: Window displayed")

        // Auto-close after 12 seconds (max delay 2s + max duration 10s)
        // This ensures all balloons have time to fully exit the screen
        DispatchQueue.main.asyncAfter(deadline: .now() + 12) {
            print("BalloonsApp: Auto-closing")
            NSApp.terminate(nil)
        }
    }
}
