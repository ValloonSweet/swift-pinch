//
//  PinchApp.swift
//  Pinch
//
//  Created by kmac on 4/17/24.
//

import SwiftUI

@main
struct PinchApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
