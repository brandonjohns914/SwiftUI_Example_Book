//
//  HowToScaleViewUpDown.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/19/23.
//

import SwiftUI

struct HowToScaleViewUpDown: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Up we go")
                .scaleEffect(5)
                .frame(width: 300, height: 300)
            
            Text("Up we go")
                .scaleEffect(x: 1, y: 5)
                .frame(width: 300, height: 300)
            
            Text("Up we go")
                .scaleEffect(2, anchor: .bottomTrailing)
            Text("Up we go")
        }
    }
}

#Preview {
    HowToScaleViewUpDown()
}
