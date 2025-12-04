//
//  ContentView.swift
//  MyList
//
//  Created by Student on 04/12/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext)
    private var modelContext
    
    // Note: Assuming 'listt' has a property named 'title' (lowercase t)
    @Query private var lists: [listt]
    
    @State private var title: String = ""
    @State private var isAlertShowing: Bool = false
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(lists){
                    list in
                    Text(list.title)
                        .font(.title2)
                        .fontWeight(.light)
                        .foregroundStyle(.yellow)
                        .padding(.vertical, 2)
                        .swipeActions{
                            Button("Delete", role: .destructive){
                                modelContext.delete(list)
                            }
                        }
                }
            }
            .navigationTitle("My Lists")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: {
                        isAlertShowing.toggle()
                        print("Add button tapped!")
                    }, label: {
                        Image(systemName: "plus")
                            .imageScale(.large)
                    })
                }
               
            }
            .alert("Create a new list", isPresented: $isAlertShowing){
                TextField("enter a list", text:$title)
                Button(){
                        modelContext.insert(listt(title:title))
                    title = ""
                }label:{
                    Text("save")
                }
                .disabled(title.isEmpty)
            }
            .overlay{
                if lists.isEmpty{
                    ContentUnavailableView("My list are not available",systemImage:"scribble", description: Text("no list yet. Add one to get started"))
                }
            }
        }
    }
}


#Preview ("Second List"){
    do {
        let container = try ModelContainer(for: listt.self, configurations: ModelConfiguration(isStoredInMemoryOnly: true))
        
        let ctx = container.mainContext
        ctx.insert(listt(title:"Swift Coding Club"))
        ctx.insert(listt(title:"good Morning"))
        ctx.insert(listt(title:"Good Afternoob"))
        
        return ContentView()
            .modelContainer(container)
    } catch {
        fatalError("Failed to create ModelContainer for preview: \(error.localizedDescription)")
    }
}

#Preview ("Main List"){
    ContentView()
        .modelContainer(for: listt.self, inMemory: true)
}
