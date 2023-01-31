//
//  AllBackgroundsView.swift
//  Motion BG
//
//  Created by Alex Marco Steiner on 31/01/23.
//

import SwiftUI



struct AllBackgroundsView: View {
    var body: some View {
        Grid {
            GridRow {
                Text("Cell #1")
                    .frame(maxWidth: 200, maxHeight: 200)
                Text("Cell #3")
                    .frame(maxWidth: 200, maxHeight: 200)
                Text("Cell #3")
                    .frame(maxWidth: 200, maxHeight: 200)
            }
                .border(.red)

            GridRow {
                Text("Cell #3")
                    .frame(maxWidth: 200, maxHeight: 200)
                Text("Cell #3")
                    .frame(maxWidth: 200, maxHeight: 200)
                Text("Cell #3")
                    .frame(maxWidth: 200, maxHeight: 200)
            }

                .border(.green)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct AllBackgroundsView_Previews: PreviewProvider {
    static var previews: some View {
        AllBackgroundsView()
    }
}
