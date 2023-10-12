//
//  EditListUsingEditButton.swift
//  Lists
//
//  Created by Brandon Johns on 9/30/23.
//

import SwiftUI

struct EditListUsingEditButton: View {
    @State private var users = ["Ellie", "Henry", "Maggie", "Cooper"]
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(users, id: \.self) { user in Text(user)
                    
                }
                .onDelete(perform: delete)
            }
            .toolbar{
                EditButton()
            }
        }
    }
    func delete(at offsets: IndexSet) {
        users.remove(atOffsets: offsets)
    }
}

#Preview {
    EditListUsingEditButton()
}
