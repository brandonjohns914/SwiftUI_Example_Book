//
//  HorizontalVerticalScrolling.swift
//  StacksGridsScrollviews
//
//  Created by Brandon Johns on 9/22/23.
//

import SwiftUI

struct HorizontalVerticalScrolling: View {
    var body: some View {
        ScrollView{
            VStack(spacing: 20){
                ForEach(0..<10){
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(.red)
                }
            }
        }
        .frame(height: 350)
        
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20){
                ForEach(0..<10){
                    Text("Item \($0)")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .frame(width: 200, height: 200)
                        .background(.blue)
                }
            }
        }
    }
}

#Preview {
    HorizontalVerticalScrolling()
}
