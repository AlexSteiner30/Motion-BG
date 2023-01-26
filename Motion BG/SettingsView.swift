//
//  SettingsView.swift
//  Motion BG
//
//  Created by robigan on 26/01/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        Button("Pick Path for GIF Background", action: loadBackgroundFlow)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
