//
//  HowToDrawBorderInsideView.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/18/23.
//

import SwiftUI

struct HowToDrawBorderInsideView: View {
    var body: some View {
        
        VStack {
            
            Circle()
                .strokeBorder(.blue, lineWidth: 50)
                .frame(width: 200, height: 200)
                .padding()
            
            Circle()
                .stroke(.green, lineWidth: 50)
                .frame(width: 200, height: 200)
                .padding()
        }
    }
}

#Preview {
    HowToDrawBorderInsideView()
}
