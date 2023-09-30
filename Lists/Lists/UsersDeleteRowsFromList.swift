//
//  UsersDeleteRowsFromList.swift
//  Lists
//
//  Created by Brandon Johns on 9/29/23.
//

import SwiftUI

struct UsersDeleteRowsFromList: View {
    @State private var users = ["Ellie", "Henry", "Maggie", "Cooper"]
    
    @State private var dogs = ["Ellie", "Henry", "Maggie", "Cooper"]
    
    var body: some View {
        NavigationStack {
            List($users, id: \.self, editActions: .delete) { $user in
            Text(user)
                    .deleteDisabled(users.count < 2)
            }
            
            List {
                ForEach(dogs, id: \.self) { user in
                Text(user)
                }
                .onDelete(perform: delete)
            }
            .navigationTitle("Users")
        }
    }
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

#Preview {
    UsersDeleteRowsFromList()
}
