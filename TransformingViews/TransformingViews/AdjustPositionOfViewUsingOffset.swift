//
//  AdjustPositionOfViewUsingOffset.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/18/23.
//

import SwiftUI

struct AdjustPositionOfViewUsingOffset: View {
    var body: some View {
        VStack
        {
            VStack {
                Text("Home")
                Text("Options")
                    .offset(y:15)
                Text("Help")
            }
            VStack {
                Text("Home")
                Text("Options")
                    .offset(y:15)
                    .padding(.bottom, 15)
                Text("Help")
            }
            
            HStack {
                Text("Before")
                    .background(.red)
                    .offset(y: 15)
                
                Text("After")
                    .offset(y: 15)
                    .background(.red)
            }
            padding()
        }
        ZStack(alignment: .bottomTrailing ) {
            Image(systemName: "circle.fill")
                .padding(10)
                .background(.black)
                .foregroundColor(.white)
                .offset(x: -5, y: -5)
        }
    }
}


#Preview {
    AdjustPositionOfViewUsingOffset()
}
