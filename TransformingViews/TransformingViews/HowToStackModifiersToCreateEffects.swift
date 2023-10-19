//
//  HowToStackModifiersToCreateEffects.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/18/23.
//

import SwiftUI

struct HowToStackModifiersToCreateEffects: View {
    var body: some View {
        Text("Forecast: Sun")
            .font(.largeTitle)
            .foregroundColor(.white)
            .padding()
            .background(.red)
            .padding()
            .background(.orange)
            .padding()
            .background(.yellow)
    }
}

#Preview {
    HowToStackModifiersToCreateEffects()
}
