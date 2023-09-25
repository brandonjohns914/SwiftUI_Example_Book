//
//  ScrollViewLocationScrollViewReader.swift
//  StacksGridsScrollviews
//
//  Created by Brandon Johns on 9/22/23.
//

import SwiftUI

struct ScrollViewLocationScrollViewReader: View {
    let colors: [Color] = [.red, .green, .blue]
    var body: some View {
        VStack(spacing: 15) {
            ScrollViewReader { value in
                ScrollView {
                    Button("Jump to #8") {
                        value.scrollTo(8, anchor: .top)
                    }
                    .padding()
                    
                    ForEach(0..<100) { i in
                        Text("Example \(i)")
                            .font(.title)
                            .frame(width:200, height: 200)
                            .background(colors[i % colors.count])
                            .id(i)
                    }
                }
            }
            .frame(height: 350)
            
        }
    }
}

#Preview {
    ScrollViewLocationScrollViewReader()
}
