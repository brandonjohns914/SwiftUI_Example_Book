//
//  NewViewWhenListRowTapped.swift
//  Navigation
//
//  Created by Brandon Johns on 10/15/23.
//

import SwiftUI

struct PlayerView: View {
    let name: String
    
    var body: some View {
        Text("Selected player: \(name)")
            .font(.largeTitle)
    }
}


struct NewViewWhenListRowTapped: View {
let players = ["Ellie", "Henry", "Maggie", "Cooper"]
    
    var body: some View {
        NavigationStack {
            List(players, id: \.self) { player in
                NavigationLink(player, value: player)
            }
            .navigationDestination(for: String.self, destination: PlayerView.init)
            .navigationTitle("Select a player")
            
            
            List(players, id: \.self) { player in
                NavigationLink {
                    PlayerView(name: player)
                } label: {
                    Text(player)
                }
            }
            .navigationTitle("Select a player")
            
            
            List {
                            NavigationLink("Show an integer", value: 42)
                            NavigationLink("Show a string", value: "Hello, world!")
                            NavigationLink("Show a Double", value: Double.pi)
                        }
                        .navigationDestination(for: Int.self) { Text("Received Int: \($0)") }
                        .navigationDestination(for: String.self) { Text("Received String: \($0)") }
                        .navigationDestination(for: Double.self) { Text("Received Double: \($0)") }
                        .navigationTitle("Select a value")
                    }
    }
    
}

#Preview {
    NewViewWhenListRowTapped()
}
