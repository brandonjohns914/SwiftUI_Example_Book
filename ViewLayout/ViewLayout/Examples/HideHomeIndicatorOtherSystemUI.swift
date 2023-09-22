//
//  HideHomeIndicatorOtherSystemUI.swift
//  ViewLayout
//
//  Created by Brandon Johns on 9/22/23.
//

import SwiftUI

struct HideHomeIndicatorOtherSystemUI: View {
    var body: some View {
        Text("This needs to take up lots of space")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.yellow)
            .persistentSystemOverlays(.hidden)
    }
}

#Preview {
    HideHomeIndicatorOtherSystemUI()
}
