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

  var body: some View {
    NavigationView {
      List {
        ForEach(themes, id: \.self) { catBreed in
          Text(catBreed)
        }
      }
      .searchable(text: $searchTerm)
      .navigationTitle("Cat Breeds")
    }
  }
}
