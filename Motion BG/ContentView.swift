//
//  ContentView.swift
//  Motion BG
//
//  Created by Alex Marco Steiner on 18/01/23.
//

import SwiftUI
struct Tree: Identifiable, Hashable {
    let id = UUID()
    var name: String
    var children: [Tree]? = nil
}

enum SideBar: Hashable {
    case number(Int)
    case tree(Tree)
}

struct ContentView: View {
    var body: some View {
        
        NavigationSplitView {
            List(selection: $selection) {
                
                Section("Numbers") {
                    ForEach(1..<6) { number in
                        NavigationLink("\(number)", value: SideBar.number(number))
                    }
                }
                
            }
            
        } detail: {
            switch selection  {
                case .number(let nr):
                    Text("Number \(nr)")
                        .navigationTitle("Numbers")

                default:
                    Text("please choose")
            }
        }
    }
}
