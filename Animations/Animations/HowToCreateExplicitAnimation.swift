//
//  HowToCreateExplicitAnimation.swift
//  Animations
//
//  Created by Brandon Johns on 10/20/23.
//

import SwiftUI

struct HowToCreateExplicitAnimation: View {
    
    @State private var opacity = 1.0
    
    var body: some View {
        Button("Press here") {
            withAnimation(.linear(duration: 3)) {
                opacity -= 0.2
            }
        }
        .padding()
        .opacity(opacity)
    }
}

#Preview {
    HowToCreateExplicitAnimation()
}
