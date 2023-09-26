//
//  BorderedButtons.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct BorderedButtons: View {
    var body: some View {
        VStack {
            Button("Buy: $0.99"){
                print("buying")
            }
            .buttonStyle(.bordered)
            
            Button("Buy: $0.99"){
                print("buying")
            }
            .buttonStyle(.borderedProminent)
            
            Button("Buy: $0.99"){
                print("buying")
            }
            .tint(.indigo)
            .buttonStyle(.borderedProminent)
            
            Button("Delete", role: .destructive) {
                
                print("Deleting...")
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    BorderedButtons()
}
