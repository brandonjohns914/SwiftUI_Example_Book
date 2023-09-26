//
//  MultiLineEditableTextWithTextEditor.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct MultiLineEditableTextWithTextEditor: View {
    @State private var profileText = "Enter your bio"
    var body: some View {
        NavigationStack {
            TextEditor(text: $profileText)
                .foregroundColor(.secondary)
                .padding(.horizontal)
                .navigationTitle("About you")
        }
    }
}

#Preview {
    MultiLineEditableTextWithTextEditor()
}
