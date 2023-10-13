//
//  GroupViewsTogether.swift
//  Containers
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct GroupViewsTogether: View {
    var body: some View {
        VStack {
            Group {
                Text("Line 1")
                Text("Line 2")
                Text("Line 3")
                Text("Line 4")
                Text("Line 5")
            }
            Group {
                Text("Line 6")
                Text("Line 7")
                Text("Line 8")
                Text("Line 9")
                Text("Line 10")
            }
        }
    }
}

#Preview {
    GroupViewsTogether()
}
