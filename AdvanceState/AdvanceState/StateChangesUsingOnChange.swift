//
//  StateChangesUsingOnChange.swift
//  AdvanceState
//
//  Created by Brandon Johns on 9/29/23.
//

import SwiftUI

struct StateChangesUsingOnChange: View {
    @State private var name = ""
    
    var body: some View {
        TextField("Enter your name: ", text: $name)
            .textFieldStyle(.roundedBorder)
            .onChange(of: name) { newValue in
            print("Name changed to \(name)! ")}
    }
}

#Preview {
    StateChangesUsingOnChange()
}
