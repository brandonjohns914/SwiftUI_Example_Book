//
//  AllowRowSelectionInList.swift
//  Lists
//
//  Created by Brandon Johns on 9/30/23.
//

import SwiftUI

struct AllowRowSelectionInList: View {
    @State private var selection = Set<String>()
    
    let names = ["Ellie", "Henry","Maggie","Cooper" ]
    var body: some View {
        NavigationStack {
            List(names, id: \.self, selection: $selection) { name in
            Text(name)
            }
            .navigationTitle("List Selection")
            .toolbar{
                EditButton()
            }
        }
    }
}

#Preview {
    AllowRowSelectionInList()
}
