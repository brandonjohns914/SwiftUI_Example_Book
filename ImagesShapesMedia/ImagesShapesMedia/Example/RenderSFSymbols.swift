//
//  RenderSFSymbols.swift
//  ImagesShapesMedia
//
//  Created by Brandon Johns on 9/15/23.
//

import SwiftUI

struct RenderSFSymbols: View {
    var body: some View {
        VStack {
            Image(systemName: "moon.stars.fill")
                .padding()
            Image(systemName: "wind.snow")
                .font(.largeTitle)
                .padding()
            
            Image(systemName: "cloud.heavyrain.fill")
                .font(.largeTitle)
                .foregroundColor(.red)
                .padding()
            
            Image(systemName: "cloud.sun.rain.fill")
                .renderingMode(.original)
                .font(.largeTitle)
                .padding()
                .background(.black)
                .clipShape(Circle())
                .padding()
            
            Image(systemName: "person.crop.circle.fill.badge.plus")
                .renderingMode(.original)
                .foregroundColor(.blue)
                .font(.largeTitle)
        }
    }
}

struct RenderSFSymbols_Previews: PreviewProvider {
    static var previews: some View {
        RenderSFSymbols()
    }
}
