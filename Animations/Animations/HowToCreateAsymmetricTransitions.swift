//
//  HowToCreateAsymmetricTransitions.swift
//  Animations
//
//  Created by Brandon Johns on 10/22/23.
//

import SwiftUI

struct HowToCreateAsymmetricTransitions: View {
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
                    .transition(.asymmetric(insertion: .move(edge: .leading), removal: .move(edge: .bottom)))
            }
        }
    }
}

#Preview {
    HowToCreateAsymmetricTransitions()
}
