//
//  ColorThePaddingAroundAView.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/18/23.
//

import SwiftUI

struct ColorThePaddingAroundAView: View {
    var body: some View {
        
        VStack {
            Text("Hacking with Swift")
                .background(.red)
                .foregroundColor(.white)
                .padding()
            
            Text("Hacking with Swift")
                .padding()
                .background(.blue)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    ColorThePaddingAroundAView()
}
