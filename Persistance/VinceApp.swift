import SwiftUI
import SwiftData

@main
struct VinceApp: App {
    var body: some Scene {
        WindowGroup {
            VinceView()
                .modelContainer(for: Todolist.self)
        }
    }
}
