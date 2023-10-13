//
//  HideShowStatusBar.swift
//  Containers
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct HideShowStatusBar: View {
    @State private var hideStatusBar = false
    
    var body: some View {
        Button("Toggle Status Bar"){
            withAnimation {
                hideStatusBar.toggle()
            }
        }
        .statusBar(hidden: hideStatusBar)
    }
}

#Preview {
    HideShowStatusBar()
}
