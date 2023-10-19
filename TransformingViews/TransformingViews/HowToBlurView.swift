//
//  HowToBlurView.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/19/23.
//

import SwiftUI

struct HowToBlurView: View {
    @State private var blurAmount = 0.0
    var body: some View {
        VStack {
            Text("Drag the slider to blur me")
                .blur(radius: blurAmount)
            
            Slider(value: $blurAmount, in: 0...20)
        }
    }
}

#Preview {
    HowToBlurView()
}
