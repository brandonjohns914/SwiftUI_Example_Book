//
//  LazyStacksVH.swift
//  StacksGridsScrollviews
//
//  Created by Brandon Johns on 9/24/23.
//

import SwiftUI

struct LazyStacksVH: View {
    var body: some View {
        ScrollView{
            LazyVStack {
                ForEach(1...100, id: \.self) { value in
                Text("Row\(value)")
                }
            }
        }
        .frame(height: 300)
    }
}

#Preview {
    LazyStacksVH()
}
