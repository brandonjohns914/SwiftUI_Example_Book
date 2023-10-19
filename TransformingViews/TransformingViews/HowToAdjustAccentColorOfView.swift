//
//  HowToAdjustAccentColorOfView.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/19/23.
//

import SwiftUI

struct HowToAdjustAccentColorOfView: View {
    var body: some View {
        VStack {
            Button("Press here") {
                print("Button Pressed!")
            }
        }
        .accentColor(.orange)
    }
}

#Preview {
    HowToAdjustAccentColorOfView()
}
