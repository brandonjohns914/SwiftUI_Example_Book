//
//  ScrollToSpecificRowInList.swift
//  Lists
//
//  Created by Brandon Johns on 9/30/23.
//

import SwiftUI

struct ScrollToSpecificRowInList: View {
    var body: some View {
        ScrollViewReader { proxy in
            VStack {
                Button("Jump to #50"){
                    proxy.scrollTo(50)
                }
                
                List(0..<100, id: \.self) { i in
                    Text("Example \(i)")
                        .id(i)
                }
            }
        }
    }
}

#Preview {
    ScrollToSpecificRowInList()
}
