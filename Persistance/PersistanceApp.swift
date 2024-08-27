//
//  PersistanceApp.swift
//  Persistance
//
//  Created by Quin Schaller on 8/27/24.
//

import SwiftUI
import SwiftData

@main
struct PersistanceApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: College.self)
        }
    }
}
