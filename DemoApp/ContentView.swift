//
//  ContentView.swift
//  DemoApp
//
//  Created by Student on 29/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
                    
                    NavigationStack {
                        Myntra()
                    }
                    .tabItem {
                        Label("Home", systemImage: "house")
                            }
                    
                    NavigationStack {
                        Text("Favorites")
                    }
                    .tabItem {
                        Label("Favorites", systemImage: "star.fill")
                    }
                    
                    NavigationStack {
                        Text("Profile")
                    }
                    .tabItem {
                        Label("Profile", systemImage: "person.fill")
                    }
                }
    }
}

#Preview {
    ContentView()
}

