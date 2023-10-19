//
//  HowToDisplayBottomSheet.swift
//  AlertsandMenus
//
//  Created by Brandon Johns on 10/18/23.
//

import SwiftUI

struct HowToDisplayBottomSheet: View {
    @State private var showingCredits = false
    
    let heights = stride(from: 0.1, through: 1.0, by: 0.1).map { PresentationDetent.fraction($0)
    }
    var body: some View {
        Button("Show Credits") {
            showingCredits.toggle()
        }
        .sheet(isPresented: $showingCredits) {
            Text("This app is brought to you buy Hacking with Swift")
                //.presentationDetents([.medium, .large])
                .presentationDetents(Set(heights))
                .presentationDragIndicator(.hidden)
        }
    }
}

#Preview {
    HowToDisplayBottomSheet()
}
