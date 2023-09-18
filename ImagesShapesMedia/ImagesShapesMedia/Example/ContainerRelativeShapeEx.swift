//
//  ContainerRelativeShapeEx.swift
//  ImagesShapesMedia
//
//  Created by Brandon Johns on 9/18/23.
//

import SwiftUI

struct ContainerRelativeShapeEx: View {
    var body: some View {
        ZStack {
            ContainerRelativeShape()
                .inset(by: 4)
                .fill(.blue)
            
            Text("Hello, World!")
                .font(.title)
            
            
        }
        .frame(width: 300, height: 200)
        .background(.red)
        .clipShape(Capsule())
    }
}

struct ContainerRelativeShapeEx_Previews: PreviewProvider {
    static var previews: some View {
        ContainerRelativeShapeEx()
    }
}
