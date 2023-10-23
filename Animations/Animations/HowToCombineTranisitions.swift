//
//  HowToCombineTranisitions.swift
//  Animations
//
//  Created by Brandon Johns on 10/22/23.
//

import SwiftUI

struct HowToCombineTranisitions: View {
    @State private var showDetails = false
    
    
    var body: some View {
        VStack {
            Button("Press to show details") {
                withAnimation {
                    showDetails.toggle()
                }
            }
            if showDetails {
                Text("Details go here")
                    //.transition(AnyTransition.opacity.combined(with: .slide))
                    .transition(.moveAndScale)
            }
        }
    }
}

#Preview {
    HowToCombineTranisitions()
}

extension AnyTransition {
    static var moveAndScale: AnyTransition {
        AnyTransition.move(edge: .bottom).combined(with: .scale)
    }
}
