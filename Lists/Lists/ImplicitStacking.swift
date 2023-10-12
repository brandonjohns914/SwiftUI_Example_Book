//
//  ImplicitStacking.swift
//  Lists
//
//  Created by Brandon Johns on 9/30/23.
//

import SwiftUI

struct User: Identifiable {
    let id = UUID()
    let username = "Anonymous"
    
}

struct ImplicitStacking: View {
    let users = [User(), User(), User()]
    var body: some View {
        List(users){ user in
            Image("Ellie1")
                .resizable()
                .scaledToFit()
                .frame(width: 40, height: 40)
            Text(user.username)
        }
    }
}

#Preview {
    ImplicitStacking()
}
