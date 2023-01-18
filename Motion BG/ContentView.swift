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

    public var temp:String = ""
    
    public var results: [String] {
       searchTerm.isEmpty ? themes : themes.filter { $0.contains(searchTerm) }
     }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(themes, id: \.self) { theme in Text(theme) }
            }
            .searchable(text: $searchTerm)
        }
    }

}
