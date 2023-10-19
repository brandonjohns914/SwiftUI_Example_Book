//
//  HowToRoundCornersOfView.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/19/23.
//

import SwiftUI

struct HowToRoundCornersOfView: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("Round me")
                .padding()
                .background(.red)
                .cornerRadius(15)
            
            
            Text("Round me")
                .padding()
                .background(.red)
                .clipShape(Capsule())
        }
    }
}

#Preview {
    HowToRoundCornersOfView()
}
