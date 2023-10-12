//
//  ListRowSeparatorsInsets.swift
//  Lists
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI


//.listRowSeparatorTrailing
struct ListRowSeparatorsInsets: View {
    var body: some View {
        VStack {
            List(0..<51) { i in
            Label("Row \(i)", systemImage: "\(i).circle")
                    .listItemTint(i.isMultiple(of: 2) ? .red: .green )
                    .alignmentGuide(.listRowSeparatorLeading) { d in
                        d[.leading]
                
                        
                    }
            }
           
            
        }
    }
}

#Preview {
    ListRowSeparatorsInsets()
}
