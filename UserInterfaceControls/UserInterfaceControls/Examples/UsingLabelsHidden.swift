//
//  UsingLabelsHidden.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct UsingLabelsHidden: View {
    @State private var selectedNumber = 0
    var body: some View {
        Picker("Select a number", selection: $selectedNumber) {
            ForEach(0..<10) {
                Text("\($0)")
            }
        }
        .labelsHidden()
    }
}

#Preview {
    UsingLabelsHidden()
}
