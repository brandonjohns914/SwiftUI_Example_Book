//
//  MultipleAlertsInSingleView.swift
//  AlertsandMenus
//
//  Created by Brandon Johns on 10/17/23.
//

import SwiftUI

struct MultipleAlertsInSingleView: View {
    @State private var showingAlert1 = false
    @State private var showingAlert2 = false
    
    var body: some View {
        VStack {
            Button("Show 1"){
                showingAlert1 = true
            }
            .alert(isPresented: $showingAlert1) {
                Alert(title: Text("One"), message: nil, dismissButton: .cancel())
            }
            
            Button("Show 2") {
                showingAlert2 = true
            }
            .alert(isPresented: $showingAlert2) {
                Alert(title: Text("Two"), message: nil, dismissButton: .cancel())
            }
        }
    }
}

#Preview {
    MultipleAlertsInSingleView()
}
