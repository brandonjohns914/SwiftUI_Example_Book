//
//  AddTextFieldToanAlert.swift
//  AlertsandMenus
//
//  Created by Brandon Johns on 10/17/23.
//

import SwiftUI

struct AddTextFieldToanAlert: View {
    
    @State private var isAuthenticating = false
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        Button("Log in") {
            isAuthenticating.toggle()
        }
        .alert("Log In", isPresented: $isAuthenticating){
            TextField("Username", text: $username)
                .textInputAutocapitalization(.never)
            SecureField("Password", text: $password)
            Button("OK", action: authenticate)
            Button("Cancel", role: .cancel){}
        } message: {
            Text("Please enter your username and password")
        }
    }
    func authenticate() {
        if username == "BJ914" && password == "Ellie" {
            print("You are in!")
        } else {
            print("Who are you?")
        }
    }
}

#Preview {
    AddTextFieldToanAlert()
}
