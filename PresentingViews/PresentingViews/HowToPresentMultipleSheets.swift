//
//  HowToPresentMultipleSheets.swift
//  PresentingViews
//
//  Created by Brandon Johns on 10/17/23.
//

import SwiftUI

struct HowToPresentMultipleSheets: View {
    @State private var showingFirst = false
    @State private var showingSecond = false
    
    var body: some View {
        VStack {
            Button("Show First Sheet") {
                showingFirst = true
            }
        }
        .sheet(isPresented: $showingFirst) {
            Button("Show Second Sheet") {
                showingSecond = true
            }
            .sheet(isPresented: $showingSecond) {
                Text("Second Sheet")
            }
        }
    }
}
#Preview {
    HowToPresentMultipleSheets()
}
