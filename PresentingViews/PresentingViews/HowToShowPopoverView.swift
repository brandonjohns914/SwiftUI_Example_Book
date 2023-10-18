//
//  HowToShowPopoverView.swift
//  PresentingViews
//
//  Created by Brandon Johns on 10/17/23.
//

import SwiftUI

struct HowToShowPopoverView: View {
    
    @State private var showingPopver = false
    var body: some View {
        Button("Show Menu") {
            showingPopver = true
        }
        .popover(isPresented: $showingPopver) {
            Text("Your content here")
                .font(.headline)
                .padding()
            
        }
    }
}

#Preview {
    HowToShowPopoverView()
}
