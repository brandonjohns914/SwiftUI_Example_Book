//
//  HowToUseStateObject.swift
//  AdvanceState
//
//  Created by Brandon Johns on 9/29/23.
//state objects consider that view as the owner

import SwiftUI

class Player: ObservableObject {
    @Published var name = "Ellie"
    @Published var age = 1
}

struct HowToUseStateObject: View {
    
    @StateObject var player = Player()
    
    var body: some View {
        NavigationStack {
            NavigationLink {
                PlayerNameView(player: player)
            } label: {
                Text("Show detail view")
            }
        }
    }
}

struct PlayerNameView: View {
    @ObservedObject var player: Player
    
    var body: some View {
        Text("Hello, \(player.name)!")
    }
}

#Preview {
    HowToUseStateObject()
}
