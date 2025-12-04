//
//  MyListApp.swift
//  MyList
//
//  Created by Student on 04/12/25.
//

import SwiftUI
import SwiftData

@main
struct MyListApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: listt.self)
        }
    }
}
