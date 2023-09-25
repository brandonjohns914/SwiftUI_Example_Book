//
//  DismissKeyboardUserScrolls.swift
//  StacksGridsScrollviews
//
//  Created by Brandon Johns on 9/25/23.
//

import SwiftUI

struct DismissKeyboardUserScrolls: View {
    @State private var username = "Anonymous"
    @State private var bio = ""
    var body: some View {
        ScrollView {
            VStack {
                TextField("Name", text: $username)
                    .textFieldStyle(.roundedBorder)
                TextEditor(text: $bio)
                    .frame(height: 400)
                    .border(.quaternary, width: 1)
            }
            .padding(.horizontal)
        }
        .scrollDismissesKeyboard(.interactively)
    }
}

#Preview {
    DismissKeyboardUserScrolls()
}
