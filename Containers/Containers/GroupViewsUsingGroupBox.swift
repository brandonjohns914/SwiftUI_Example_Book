//
//  GroupViewsUsingGroupBox.swift
//  Containers
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct GroupViewsUsingGroupBox: View {
    var body: some View {
        GroupBox {
            VStack(alignment: .leading)
            {
                Text("Your account")
                    .font(.headline)
                Text("Username: tswift89")
                Text("City: Nashville")
            }
        }
        
        GroupBox {
            Text("Outer Content")
            GroupBox {
                Text("Middle Content")
                GroupBox {
                    Text("Inner Content")
                }
            }
        }
    }
}

#Preview {
    GroupViewsUsingGroupBox()
}
