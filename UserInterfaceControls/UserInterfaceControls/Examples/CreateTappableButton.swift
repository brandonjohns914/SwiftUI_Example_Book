//
//  CreateTappableButton.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/25/23.
//

import SwiftUI

struct CreateTappableButton: View {
    @State private var showDetails = false
    var body: some View {
        VStack(alignment: .leading) {
            Button("Show details"){
                showDetails.toggle()
            }
            
            if showDetails{
                Text("You should follow me on Twitter: @twostraws")
                    .font(.largeTitle)
            }
            
            Button {
                print("Image tapped!")
            } label: {
                Image("Ellie4")
                    .resizable()
                    .scaledToFit()
            }
            
            Button {
                print("Button pressed")
            } label : {
                Text("Press me")
                    .padding(20)
            }
            .contentShape(Rectangle())
            
            Button("Delete", role: .destructive) {
                print("Perform delete")
            }
        }
    }
}

#Preview {
    CreateTappableButton()
}
