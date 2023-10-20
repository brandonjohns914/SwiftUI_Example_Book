//
//  SwiftsBuiltInShapes.swift
//  Drawing
//
//  Created by Brandon Johns on 10/19/23.
//

import SwiftUI

struct SwiftsBuiltInShapes: View {
    var body: some View {
        VStack(spacing: 10) {
            Rectangle()
                .fill(.gray)
                .frame(width: 150, height: 150)
            
            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.red)
                .frame(width: 150, height: 150)
            
            Capsule()
                .fill(.green)
                .frame(width: 150, height: 50)
            
            Ellipse()
                .fill(.blue)
                .frame(width: 150, height: 50)
            
            Circle()
                .fill(.teal)
                .frame(width: 150, height: 150)
            
            ZStack {
                Rectangle()
                    .fill(.gray)
                    .frame(width: 200, height: 200)
                
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .fill(.red)
                    .frame(width: 190, height: 190)
                
                Capsule()
                    .fill(.green)
                    .frame(width: 110, height: 50)
                
                Ellipse()
                    .fill(.blue)
                    .frame(width: 100, height: 50)
                
                Circle()
                    .fill(.teal)
                    .frame(width: 100, height: 50)
            }
        }
    }
}

#Preview {
    SwiftsBuiltInShapes()
}
