//
//  HowToCreateSpringAninmation.swift
//  Animations
//
//  Created by Brandon Johns on 10/20/23.
//

import SwiftUI

struct HowToCreateSpringAninmation: View {
    @State private var angle: Double = 0
    var body: some View {
        Button("Press me") {
            angle += 45
        }
        .padding()
        .rotationEffect(.degrees(angle))
        .animation(.interpolatingSpring(mass: 1, stiffness: 1, damping: 0.5, initialVelocity: 10), value: angle)
    }
}

#Preview {
    HowToCreateSpringAninmation()
}
