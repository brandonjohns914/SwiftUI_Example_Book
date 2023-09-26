//
//  TextFieldExpandVertically.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct TextFieldExpandVertically: View {
    @State private var bio = "About me"
    var body: some View {
        VStack {
            TextField("Describe yourself", text: $bio, axis: .vertical)
                .textFieldStyle(.roundedBorder)
                .lineLimit(5, reservesSpace: true)
            
            Text(bio)
        }
        .padding()
    }
}

#Preview {
    TextFieldExpandVertically()
}
