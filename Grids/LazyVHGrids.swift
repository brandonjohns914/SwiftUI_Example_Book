//
//  LazyVHGrids.swift
//  StacksGridsScrollviews
//
//  Created by Brandon Johns on 9/25/23.
//

import SwiftUI

struct LazyVHGrids: View {
    let items = 1...50
    
    let rows = [
        GridItem(.fixed(50)),
        GridItem(.fixed(50))
    ]
    /*
     let data = (1...100).map { "Item \($0)" }
     let columns = [ GridItem(.adaptive(minimum: 80)) ]
     let columns = [
     GridItem(.flexible()),
     GridItem(.flexible()),
     GridItem(.flexible()),
     GridItem(.flexible()),
     GridItem(.flexible())
     ]
     
     let columns = [
     GridItem(.fixed(100)),
     GridItem(.flexible())
     ]
     */
    
    var body: some View {
        /*
         ScrollView {
         LazyVGrid(columns: columns, spacing: 20) {
         ForEach(data, id: \.self) { item in
         Text(item)
         }
         }
         .padding(.horizontal)
         }
         .frame(maxHeight: 300)
         
         */
        ScrollView(.horizontal) {
            LazyHGrid(rows: rows, alignment: .center) {
                ForEach(items, id: \.self) { item in
                    Image(systemName: "\(item).circle.fill")
                        .font(.largeTitle)
                }
            }
            .frame(height: 150)
        }
        
    }
}

#Preview {
    LazyVHGrids()
}
