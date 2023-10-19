//
//  HowToDrawBorderAroundView.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/18/23.
//

import SwiftUI

struct HowToDrawBorderAroundView: View {
    var body: some View {
        VStack {
            Text("Hacking with Swift")
                .border(.green)
                .padding()
            
            Text("Hacking with Swift")
                .padding()
                .border(.teal)
            
            Text("Hacking with Swift")
                .padding()
                .border(.red, width: 4)
                .padding()
            
            Text("Hacking with Swift")
                .padding()
                .overlay(
                RoundedRectangle(cornerRadius: 16)
                    .stroke(.blue, lineWidth: 4)
                )
            
        }
    }
}

#Preview {
    HowToDrawBorderAroundView()
}
