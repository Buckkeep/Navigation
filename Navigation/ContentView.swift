//
//  ContentView.swift
//  Navigation
//
//  Created by Buhecha, Neeta (Trainee Engineer) on 20/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(0..<5) { i in
                    NavigationLink("Select Number: \(i)", value: i)
                }
                ForEach(0..<5) { i in
                    NavigationLink("Select String: \(i)", value: String(i))
                }
            }
            .toolbar {
                Button("Push 245") {
                    path.append(245)
                }
                
                Button("Push hello") {
                    path.append("hello")
                }
             }
            .navigationDestination(for: Int.self) {selection in
                Text("You selected number \(selection)")
            }
            .navigationDestination(for: String.self) {selection in
                Text("You selected string \(selection)")
            }
        }

    }
}

#Preview {
    ContentView()
}
