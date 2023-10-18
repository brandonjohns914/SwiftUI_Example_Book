//
//  LetUsersPickOptionsFromMenu.swift
//  AlertsandMenus
//
//  Created by Brandon Johns on 10/17/23.
//

import SwiftUI

struct LetUsersPickOptionsFromMenu: View {
    @State private var selection = "Red"
        let colors = ["Red", "Green", "Blue", "Black", "Tartan"]

        var body: some View {
            VStack {
                Picker("Select a paint color", selection: $selection) {
                    ForEach(colors, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(.menu)

                Text("Selected color: \(selection)")
            }
        }
}

#Preview {
    LetUsersPickOptionsFromMenu()
}
