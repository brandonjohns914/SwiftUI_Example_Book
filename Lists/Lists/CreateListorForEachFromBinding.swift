//
//  CreateListorForEachFromBinding.swift
//  Lists
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct User1: Identifiable {
    let id = UUID()
    var name: String
    var isContacted = false
}

struct CreateListorForEachFromBinding: View {
    @State private var users = [
            User1(name: "Taylor"),
            User1(name: "Justin"),
            User1(name: "Adele")
        ]

        var body: some View {
            List($users) { $user in
                Text(user.name)
                Spacer()
                Toggle("User has been contacted", isOn: $user.isContacted)
                    .labelsHidden()
            }
        }
}

#Preview {
    CreateListorForEachFromBinding()
}
