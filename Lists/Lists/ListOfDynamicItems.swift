//
//  ListOfDynamicItems.swift
//  Lists
//
//  Created by Brandon Johns on 9/29/23.
//

import SwiftUI

struct Restaurant: Identifiable {
    let id = UUID()
    let name: String
}

struct RestaurantRow: View {
    var restaurant: Restaurant
    
    var body: some View {
        Text("Come and eat at \(restaurant.name)")
    }
}


struct ListOfDynamicItems: View {
    let restaurants = [
        Restaurant(name: "Joe's Original"),
        Restaurant(name: "The Real Joe's Original"),
        Restaurant(name: "Original Joe's")
    ]
    
    var body: some View {
        List(restaurants) { restaurant in
        RestaurantRow(restaurant: restaurant)
        }
    }
}

#Preview {
    ListOfDynamicItems()
}
