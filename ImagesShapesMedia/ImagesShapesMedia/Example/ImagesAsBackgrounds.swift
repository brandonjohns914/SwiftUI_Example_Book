//
//  ImagesAsBackgrounds.swift
//  ImagesShapesMedia
//
//  Created by Brandon Johns on 9/15/23.
//

import SwiftUI

struct ImagesAsBackgrounds: View {
    var body: some View {
        List {
            VStack(alignment: .center) {
                
                Text("Ellie DAWG")
                    .font(.system(size: 48))
                    .padding(50)
                    .background(
                        Image("Ellie1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    )
                
                Text("Ellie DAWG")
                    .font(.largeTitle)
                    .padding()
                    .background(
                        Circle()
                            .fill(.blue)
                            .frame(width: 50, height: 50)
                        )
                
                Text("Ellie DAWG")
                    .font(.largeTitle)
                    .padding()
                    .background (
                    Circle()
                        .fill(.red)
                        .frame(width: 100, height: 100)
                    )
                    .clipped()
            }
        }
    }
}

struct ImagesAsBackgrounds_Previews: PreviewProvider {
    static var previews: some View {
        ImagesAsBackgrounds()
    }
}
