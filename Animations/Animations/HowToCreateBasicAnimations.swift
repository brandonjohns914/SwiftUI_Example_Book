//
//  HowToCreateBasicAnimations.swift
//  Animations
//
//  Created by Brandon Johns on 10/20/23.
//

import SwiftUI

struct HowToCreateBasicAnimations: View {
    @State private var scale = 1.0
    @State private var scale1 = 1.0
    @State private var angle = 0.0
    @State private var borderThickness = 1.0
    
    var body: some View {
        VStack(spacing: 10) {
            Button("Press here") {
                scale += 1
            }
            .scaleEffect(scale)
            .animation(.linear(duration: 1), value: scale)
            .padding()
            
            Button("Press here") {
                scale += 1
            }
            .scaleEffect(scale1)
            .animation(.easeIn, value: scale1)
            .padding()
            
            
            Button("Press here") {
                angle += 45
                borderThickness += 1
            }
            .padding()
            .border(.red, width: borderThickness)
            .rotationEffect(.degrees(angle))
            .animation(.easeIn, value: angle)
            .padding()
        }
    }
}

#Preview {
    HowToCreateBasicAnimations()
}
