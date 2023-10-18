//
//  HowToPresentAFullScrenModelViewFullScreenCover.swift
//  PresentingViews
//
//  Created by Brandon Johns on 10/17/23.
//

import SwiftUI

struct FullSCreenModelView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.primary.edgesIgnoringSafeArea(.all)
            Button("Dimiss Model") {
                dismiss()
            }
        }
    }
}


struct HowToPresentAFullScrenModelViewFullScreenCover: View {
    @State private var isPresented = false
    var body: some View {
        Button("Present!") {
            isPresented.toggle()
        }
        .fullScreenCover(isPresented: $isPresented, content: FullSCreenModelView.init)
    }
}

#Preview {
    HowToPresentAFullScrenModelViewFullScreenCover()
}
