//
//  ContentView.swift
//  Motion BG
//
//  Created by Alex Marco Steiner on 24/01/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    HomeView()
                } label: {
                    Label("Home", systemImage: "house")
                }
                
                NavigationLink {
                    SettingsView()
                } label: {
                    Label("Settings", systemImage: "gear")
                }
                NavigationLink {
                    AllBackgroundsView()
                } label: {
                    Label("Download", systemImage: "brain")
                }
            }
            .listStyle(.plain)
        }
        .padding()
        .navigationSplitViewStyle(.prominentDetail)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
