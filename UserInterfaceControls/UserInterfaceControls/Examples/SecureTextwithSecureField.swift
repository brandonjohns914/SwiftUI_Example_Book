//
//  SecureTextwithSecureField.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct SecureTextwithSecureField: View {
    @State private var password: String = ""
    var body: some View {
        VStack {
            SecureField("Enter a password", text: $password)
            Text("you enetred: \(password)")
        }
    }
}

#Preview {
    SecureTextwithSecureField()
}
