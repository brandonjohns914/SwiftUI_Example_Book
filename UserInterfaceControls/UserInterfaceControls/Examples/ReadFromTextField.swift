//
//  ReadFromTextField.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct ReadFromTextField: View {
    @State private var name: String = ""
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter your name", text: $name)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true)
            Text("Hello, \(name)")
        }
    }
}

#Preview {
    ReadFromTextField()
}
