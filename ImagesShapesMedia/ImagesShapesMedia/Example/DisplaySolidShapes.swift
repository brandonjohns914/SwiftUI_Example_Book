//
//  DisplaySolidShapes.swift
//  ImagesShapesMedia
//
//  Created by Brandon Johns on 9/15/23.
//

import SwiftUI

struct DisplaySolidShapes: View {
    var body: some View {
        VStack(alignment: .center, spacing: 50){
            Rectangle()
                .fill(.red)
                .frame(width: 200, height: 200)
            
            Circle()
                .fill(.blue)
                .frame(width: 100, height: 100)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(.green)
                .frame(width: 150, height: 100)
            
            Capsule()
                .fill(.cyan)
                .frame(width: 150, height: 100)
        }
    }
}

struct DisplaySolidShapes_Previews: PreviewProvider {
    static var previews: some View {
        DisplaySolidShapes()
    }
}
