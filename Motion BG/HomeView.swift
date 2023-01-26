//
//  HomeView.swift
//  Motion BG
//
//  Created by robigan on 26/01/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        Button("Hide all other apps", action: hideAllOtherApps)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
