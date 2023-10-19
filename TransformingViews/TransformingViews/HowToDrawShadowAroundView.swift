//
//  HowToDrawShadowAroundView.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/18/23.
//

import SwiftUI

struct HowToDrawShadowAroundView: View {
    var body: some View {
        VStack {
            
            Circle()
                .fill(.red.shadow(.drop(color: .black, radius: 10)))
                .padding()
            
            
            Circle()
                .fill(.red.shadow(.inner(color: .black, radius: 10)))
                .padding()
            
            Text("Hacking with Swift")
                .foregroundColor(.black)
                .padding()
                .shadow(radius: 5)
                .border(.red, width: 4)
                .background(.white)
            
            Text("Hacking with Swift")
                .padding()
                .shadow(color: .red, radius: 5)
                .border(.red, width: 4)
            
            
            Text("Hacking with Swift")
                .padding()
                .shadow(color: .red, radius: 5, x: 20, y: 20)
                .border(.red, width: 4)
            
            
            Text("Hacking with Swift")
                .padding()
                .border(.red, width: 4)
                .shadow(color: .red, radius: 5, x: 20, y: 20)
             
        }
    }
}

#Preview {
    HowToDrawShadowAroundView()
}
