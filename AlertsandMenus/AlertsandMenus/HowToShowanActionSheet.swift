//
//  HowToShowanActionSheet.swift
//  AlertsandMenus
//
//  Created by Brandon Johns on 10/17/23.
//

import SwiftUI

struct HowToShowanActionSheet: View {
    @State private var showingOptions = false
    @State private var selection = "None"
    
    
    var body: some View {
        VStack {
            Text(selection)
            
            Button("Confirm paint color") {
                showingOptions = true
            }
            .confirmationDialog("Select a color", isPresented: $showingOptions, titleVisibility: .visible) {
                Button("Red") {
                    selection = "Red"
                }
                Button("Green") {
                    selection = "Green"
                }
                Button("Blue") {
                    selection = "Blue"
                }
            }
            
            Button("Confirm paint color") {
                showingOptions = true
            }
            .confirmationDialog("Select a color", isPresented: $showingOptions, titleVisibility: .visible){
                ForEach(["Red", "Green", "Blue"], id: \.self) { color in
                    Button(color) {
                        selection = color
                            
                    }
                }
            }
        }
    }
}

#Preview {
    HowToShowanActionSheet()
}
