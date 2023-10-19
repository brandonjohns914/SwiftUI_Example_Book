//
//  HowToCreateMarchingAntsBorderEffect.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/18/23.
//

import SwiftUI

struct HowToCreateMarchingAntsBorderEffect: View {
    @State private var phase = 0.0
    var body: some View {
        VStack {
            Rectangle()
                .strokeBorder(style: StrokeStyle(lineWidth: 4, dash: [10] ))
                .padding()
            
            Rectangle()
                .strokeBorder(style: StrokeStyle(lineWidth: 4, dash: [10], dashPhase: phase))
                .frame(width: 200, height: 200)
                .onAppear() {
                    withAnimation(.linear.repeatForever(autoreverses: false)) {
                        phase -= 20
                    }
                }
        }
    }
}

#Preview {
    HowToCreateMarchingAntsBorderEffect()
}
