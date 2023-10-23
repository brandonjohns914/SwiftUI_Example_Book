//
//  HowToAddRemoveViewsTransition.swift
//  Animations
//
//  Created by Brandon Johns on 10/22/23.
//

import SwiftUI

struct HowToAddRemoveViewsTransition: View {
    
    @State private var showDetails = false
    
    var body: some View {
        VStack {
            Button("Press to show details"){
                withAnimation {
                    showDetails.toggle()
                }
            }
            if showDetails {
                Text("Details go here")
                    .transition(.move(edge: .bottom))
                
                Text("Details go here")
                    .transition(.slide)
                
                Text("Details go here")
                    .transition(.scale)
            }
        }
    }
}

#Preview {
    HowToAddRemoveViewsTransition()
}
