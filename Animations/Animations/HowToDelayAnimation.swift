//
//  HowToDelayAnimation.swift
//  Animations
//
//  Created by Brandon Johns on 10/20/23.
//

import SwiftUI

struct HowToDelayAnimation: View {
    @State var rotation = 0.0
    
    var body: some View {
        Rectangle()
            .fill(.blue)
            .frame(width: 200, height: 200)
            .rotationEffect(.degrees(rotation))
            .animation(.easeInOut(duration: 3).delay(1), value: rotation)
            .onTapGesture {
                rotation += 360
            }
    }
}

#Preview {
    HowToDelayAnimation()
}
