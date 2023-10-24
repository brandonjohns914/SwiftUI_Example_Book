//
//  HowToReduceAnimationsWhenRequested.swift
//  AccessibilityHWS
//
//  Created by Brandon Johns on 10/24/23.
//

import SwiftUI


func withOptionalAnimation<Result>(_ animation: Animation? = .default, _ body: () throws -> Result) rethrows -> Result {
    if UIAccessibility.isReduceMotionEnabled {
        return try body()
    } else {
        return try withAnimation(animation, body)
    }
}


struct HowToReduceAnimationsWhenRequested: View {
    
    @State private var scale = 1.0
    
    var body: some View {
        Text("Hello, World!")
            .scaleEffect(scale)
            .onTapGesture {
                withOptionalAnimation {
                    scale *= 1.5
                }
            }
    }
}

#Preview {
    HowToReduceAnimationsWhenRequested()
}
