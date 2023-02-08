//
//  SettingsView.swift
//  Motion BG
//
//  Created by robigan on 26/01/23.
//

import SwiftUI

struct SettingsView: View {
    @State private var basePathInstance = AppSettings.shared.basePath
    
    private func handleBasePathChange() {
        loadBasePath()
        basePathInstance = AppSettings.shared.basePath
    }
    
    var body: some View {
        VStack {
            Text("Picked Path: " + basePathInstance)
            Spacer()
            Button("Pick Path for GIF Background", action: handleBasePathChange)
        }
        .padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
