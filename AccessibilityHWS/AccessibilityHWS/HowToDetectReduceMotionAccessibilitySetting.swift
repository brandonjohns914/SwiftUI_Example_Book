//
//  HowToDetectReduceMotionAccessibilitySetting.swift
//  AccessibilityHWS
//
//  Created by Brandon Johns on 10/24/23.
//

import SwiftUI

struct HowToDetectReduceMotionAccessibilitySetting: View {
    @Environment(\.accessibilityReduceMotion) var reduceMotion
    @State private var scale = 1.0
    var body: some View {
        VStack {
            Spacer()
            
            Circle()
                .frame(width: 20, height: 20)
                .scaleEffect(scale)
                .animation(reduceMotion ? nil : .spring(response: 1, dampingFraction: 0.1), value: scale)
            
            Spacer()
            
            Button("Increase Scale") {
                scale *= 1.5
            }
        }
    }
}

#Preview {
    HowToDetectReduceMotionAccessibilitySetting()
}
