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
           Myntra()
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            
            HomePage()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            Text("Profile Screen")
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
        }
        
    }
    
}

#Preview {
    ContentView()
}

