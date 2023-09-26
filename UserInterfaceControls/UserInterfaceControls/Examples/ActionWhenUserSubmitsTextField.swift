//
//  ActionWhenUserSubmitsTextField.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct ActionWhenUserSubmitsTextField: View {
    @State private var username = ""
    @State private var password = ""
    var body: some View {
        Form {
            TextField("Username", text: $username)
            SecureField("Password", text: $password)
            
        }
        .onSubmit {
            guard username.isEmpty == false && password.isEmpty == false  else  {return}
            print("Authenticating...")
        }
    }
}

#Preview {
    ActionWhenUserSubmitsTextField()
}
