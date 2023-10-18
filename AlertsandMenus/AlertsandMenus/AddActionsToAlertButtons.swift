//
//  AddActionsToAlertButtons.swift
//  AlertsandMenus
//
//  Created by Brandon Johns on 10/17/23.
//

import SwiftUI

struct AddActionsToAlertButtons: View {
    
    @State private var showingAlert = false
    var body: some View {
        Button("Show Alert") {
            showingAlert = true
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Are you sure you want to delete this?"),
                  message: Text("There is no Undo"),
                  primaryButton: .destructive(Text("Delete")){
                print("Deleting...")
            },
                  secondaryButton: .cancel()
            )
        }
    }
}

#Preview {
    AddActionsToAlertButtons()
}
