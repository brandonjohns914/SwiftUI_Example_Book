//
//  HowToRotate3D.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/19/23.
//

import SwiftUI

struct HowToRotate3D: View {
    var body: some View {
        Text("Episode LLVM")
            .font(.largeTitle)
            .foregroundColor(.yellow)
            .rotation3DEffect(
                .degrees(45),
                axis: (x: 1, y: 0, z: 0))
    }
}

#Preview {
    HowToRotate3D()
}
