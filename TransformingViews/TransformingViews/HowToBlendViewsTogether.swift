//
//  HowToBlendViewsTogether.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/19/23.
//

import SwiftUI

struct HowToBlendViewsTogether: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(.red)
                .frame(width: 200, height: 200)
                .offset(x: -50)
                .blendMode(.screen)
            
            Circle()
                .fill(.blue)
                .frame(width: 200, height: 200)
                .offset(x: 50)
                .blendMode(.screen)
        }
        .frame(width: 400)
    }
}

#Preview {
    HowToBlendViewsTogether()
}
