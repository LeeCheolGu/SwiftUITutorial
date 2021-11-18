//
//  SwiftUIToturoialApp.swift
//  Shared
//
//  Created by 이철구 on 2021/09/26.
//

import SwiftUI

@main
struct SwiftUIToturoialApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
