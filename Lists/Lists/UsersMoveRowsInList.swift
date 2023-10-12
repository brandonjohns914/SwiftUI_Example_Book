//
//  UsersMoveRowsInList.swift
//  Lists
//
//  Created by Brandon Johns on 9/29/23.
//

import SwiftUI

struct UsersMoveRowsInList: View {
    @State private var doggies = ["Ellie", "Henry", "Maggie", "Cooper"]
    
    
    @State private var dogs = ["Ellie", "Henry", "Maggie", "Cooper"]
    
    var body: some View {
        NavigationStack {
            List($doggies, id: \.self, editActions: .move) { $dog in
                Text(dog)
                    .moveDisabled(dog == "Ellie")
            }
            List {
                ForEach(dogs, id: \.self){ dog in
                    Text(dog)
                }
                .onMove(perform: move)
            }.toolbar {
                EditButton()
            }
        }
        
    }
    
    func move(from source: IndexSet, to destination: Int){
        dogs.move(fromOffsets: source, toOffset: destination)
    }
}

#Preview {
    UsersMoveRowsInList()
}
