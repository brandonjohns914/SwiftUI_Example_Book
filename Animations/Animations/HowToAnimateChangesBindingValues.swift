//
//  HowToAnimateChangesBindingValues.swift
//  Animations
//
//  Created by Brandon Johns on 10/20/23.
//

import SwiftUI

struct HowToAnimateChangesBindingValues: View {
    
    @State private var showingWelcome = false
    var body: some View {
        VStack {
            Toggle("Toggle Label", isOn: $showingWelcome.animation(.spring()))
            
            if showingWelcome {
                Text("Hello World")
            }
        }
    }
}

#Preview {
    HowToAnimateChangesBindingValues()
}
