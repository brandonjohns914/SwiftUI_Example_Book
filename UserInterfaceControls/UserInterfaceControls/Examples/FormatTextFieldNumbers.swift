//
//  FormatTextFieldNumbers.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct FormatTextFieldNumbers: View {
    @State private var score = 0
    var body: some View {
        VStack {
            TextField("Enter your score", value: $score, format: .number)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            Text("Your score was \(score)")
        }
    }
}

#Preview {
    FormatTextFieldNumbers()
}
