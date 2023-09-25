//
//  ScrollViewandGeometryReader.swift
//  StacksGridsScrollviews
//
//  Created by Brandon Johns on 9/24/23.
//

import SwiftUI

struct ScrollViewandGeometryReader: View {
    
    @State var dragAmount = CGSize.zero
    var body: some View {
        
        VStack(spacing: 15) {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 0) {
                    ForEach(1..<20) { num in
                        LazyVStack {
                            GeometryReader { geo in
                                Text("Number \(num)")
                                    .font(.largeTitle)
                                    .padding()
                                    .background(.red)
                                    .rotation3DEffect(.degrees(-Double(geo.frame(in: .global).minX) / 8), axis: (x: 0, y: 1, z: 0))
                                    .frame(width: 200, height: 200)
                            }
                            .frame(width: 200, height: 200)
                        }
                    }
                }
            }
            
            VStack {
                        Rectangle()
                            .fill(LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing))
                            .frame(width: 200, height: 150)
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                            .rotation3DEffect(.degrees(-Double(dragAmount.width) / 20), axis: (x: 0, y: 1, z: 0))
                            .rotation3DEffect(.degrees(Double(dragAmount.height / 20)), axis: (x: 1, y: 0, z: 0))
                            .offset(dragAmount)
                            .gesture(
                                DragGesture()
                                    .onChanged { dragAmount = $0.translation }
                                    .onEnded { _ in
                                        withAnimation(.spring()) {
                                            dragAmount = .zero
                                        }
                                    }
                            )
                    }
                    .frame(width: 400, height: 400)
                }
            }
            
        }
    


#Preview {
    ScrollViewandGeometryReader()
}
