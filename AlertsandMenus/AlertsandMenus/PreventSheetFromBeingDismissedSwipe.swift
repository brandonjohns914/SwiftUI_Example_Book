//
//  PreventSheetFromBeingDismissedSwipe.swift
//  AlertsandMenus
//
//  Created by Brandon Johns on 10/18/23.
//

import SwiftUI

struct ExampleSheet: View {
    @Environment(\.dismiss) var dismiss
    @State private var termsAccepted = false
    var body: some View {
        VStack {
            Text("Terms and conditions")
                .font(.title)
            
            Text("Lots of legalese here")
            
            Toggle("Accept", isOn: $termsAccepted)
            Button("Dismiss", action: close)
        }
        .padding()
        .interactiveDismissDisabled()
    }
    func close() {
        dismiss()
    }
}

struct PreventSheetFromBeingDismissedSwipe: View {
   @State private var showingSheet = false
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet, content: ExampleSheet.init)
    }
}

#Preview {
    PreventSheetFromBeingDismissedSwipe()
}
