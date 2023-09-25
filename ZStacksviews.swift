//
//  ZStacksviews.swift
//  StacksGridsScrollviews
//
//  Created by Brandon Johns on 9/22/23.
//

import SwiftUI

struct ZStacksviews: View {
    var body: some View {
        
        ZStack(alignment: .leading) {
            Image("Ellie1")
                .resizable()
                .scaledToFit()
            Text("Ellie")
                .font(.largeTitle)
                .background(.black)
                .foregroundColor(.white)
        }
        ZStack {
            Rectangle()
                .fill(.blue)
                .frame(width: 50, height: 50)
                .zIndex(1)
            Rectangle()
                .fill(.black)
                .frame(width: 100, height: 200)
            
        }
    }
}

#Preview {
    ZStacksviews()
}
