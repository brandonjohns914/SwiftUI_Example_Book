//
//  ListOfStaticItems.swift
//  Lists
//
//  Created by Brandon Johns on 9/29/23.
//

import SwiftUI

struct Pizzeria: View {
    let name: String
    
    var body: some View {
        Text("Restaurant: \(name)")
    }
}

struct ListOfStaticItems: View {
    var body: some View {
        List {
            Pizzeria(name: "Joe's Original")
            Pizzeria(name: "The Real Joe's Original")
            Pizzeria(name: "Original Joe's")
        }
    }
}

#Preview {
    ListOfStaticItems()
}
