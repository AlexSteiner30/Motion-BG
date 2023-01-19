//
//  ContentView.swift
//  Motion BG
//
//  Created by Alex Marco Steiner on 18/01/23.
//

import SwiftUI


struct ContentView: View {
    @State public var searchTerm = ""
    private let themes = ["Cartoons", "Games", "Natural", "Films", "Music", "Cars"]
    
    let fileURLStringBase = "/Users/sofia.abouda/Desktop/maths +/Images/frame"
    
    public var results: [String] {
       searchTerm.isEmpty ? themes : themes.filter { $0.contains(searchTerm) }
     }
    
    let data = (1...100).map { "Item \($0)" }

    let columns = [
        GridItem(.adaptive(minimum: 80))
    ]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(themes, id: \.self) {
                    theme in Text(theme)
                }
            }
            .searchable(text: $searchTerm)
        }
        
        ScrollView {
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(data, id: \.self) { item in
                            Text(item)
                        }
                    }
                    .padding(.horizontal)
                }
    }
}
