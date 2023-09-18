//
//  FillStrokeTrimShapes.swift
//  ImagesShapesMedia
//
//  Created by Brandon Johns on 9/15/23.
//

import SwiftUI

struct FillStrokeTrimShapes: View {
    
    @State private var completionAmount = 0.0
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(alignment: .center, spacing: 25)
        {
            Circle()
                .strokeBorder(.black, lineWidth: 20)
                .background(Circle().fill(.blue))
                .frame(width: 150, height: 150)
            
            Circle()
                .trim(from: 0, to: 0.5)
                .frame(width: 200, height: 200)
            
            Rectangle()
                .trim(from: 0, to: completionAmount)
                .stroke(.red, lineWidth: 20)
                .frame(width: 200, height: 200)
                .rotationEffect(.degrees(-90))
                .onReceive(timer) {
                    _ in withAnimation {
                        if completionAmount == 1 {
                            completionAmount = 0
                        }else {
                            completionAmount += 0.2
                        }
                    }
                }
        }
    }
}

struct FillStrokeTrimShapes_Previews: PreviewProvider {
    static var previews: some View {
        FillStrokeTrimShapes()
    }
}


extension  Shape {
    func fill<Fill: ShapeStyle, Stroke: ShapeStyle>(_ fillStyle: Fill, strokeBorder strokeStyle: Stroke, lineWidth: Double = 1) -> some View {
        self
            .stroke(strokeStyle, lineWidth: lineWidth)
            .background(self.fill(fillStyle))
    }
}

extension InsettableShape {
    func fill<Fill: ShapeStyle, Stroke: ShapeStyle>(_ fillStyle: Fill, strokeBorder strokeStyle: Stroke, lineWidth: Double = 1) -> some View {
        self
            .strokeBorder(strokeStyle, lineWidth: lineWidth)
            .background(self.fill(fillStyle))
    }
}
