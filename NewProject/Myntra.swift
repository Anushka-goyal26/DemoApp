//
//  Myntra.swift
//  DemoApp
//
//  Created by Student on 03/12/25.
//

import SwiftUI

struct Myntra: View {
    var body: some View {
        NavigationStack{
            VStack {
               
                Image(systemName: "star")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Fashion Insta!")
                    .foregroundColor(.red)
                    .fontWeight(.bold)
                    .font(.largeTitle)
            Text("Parul University")
                    .font(.system(size: 20))
                
                NavigationLink{
                    HomePage()
                }label: {
                    Text("login")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                        .background(.blue)
                        .cornerRadius(20)
                }
            }
            .padding()
        }
    }
}

#Preview {
    Myntra()
}
