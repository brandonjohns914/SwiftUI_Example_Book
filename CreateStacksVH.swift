//
//  CreateStacksVH.swift
//  StacksGridsScrollviews
//
//  Created by Brandon Johns on 9/22/23.
//

import SwiftUI

struct CreateStacksVH: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("SwiftUI")
            Text("rocks")
        }
        
        VStack() {
            Text("SwiftUI")
            
            Divider()
            
            Text("rocks")
        }
        VStack(alignment: .leading, spacing: 20) {
            Text("SwiftUI")
            
            Divider()
            
            Text("rocks")
        }
        HStack {
            Text("SwiftUI")
            Text("rocks")
        }
    }
}

#Preview {
    CreateStacksVH()
}
