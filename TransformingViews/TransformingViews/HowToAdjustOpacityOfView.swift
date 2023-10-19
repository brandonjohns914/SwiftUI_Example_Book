//
//  HowToAdjustOpacityOfView.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/19/23.
//

import SwiftUI

struct HowToAdjustOpacityOfView: View {
    
    @State private var opacity = 0.5
    var body: some View {
        VStack(spacing: 10) {
            Text("Now you see me")
                .padding()
                .background(.red)
                .opacity(0.3)
            
            Text("Now you see me")
                .padding()
                .background(.red)
                .opacity(opacity)
            
            Slider(value: $opacity, in: 0...1)
                .padding()
            
        }
    }
}

#Preview {
    HowToAdjustOpacityOfView()
}
