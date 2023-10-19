//
//  HowToRotateAView.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/19/23.
//

import SwiftUI

struct HowToRotateAView: View {
    @State private var rotations = 0.0
    @State private var rotations1 = 0.0
    var body: some View {
        VStack(spacing: 10) {
            
            Text("Up we go")
                .rotationEffect(.degrees(-90))
                .padding()
            
            Text("Up we go")
                .rotationEffect(.radians(.pi))
                .padding()
            
            Slider(value: $rotations, in: 0...360)
            Text("Up we go")
                .rotationEffect(.degrees(rotations))
                .padding()
            
            Slider(value: $rotations1, in: 0...360)
            Text("Up we go")
                .rotationEffect(.degrees(rotations1), anchor: .topLeading)
                .padding()
            
            
        }
    }
}

#Preview {
    HowToRotateAView()
}
