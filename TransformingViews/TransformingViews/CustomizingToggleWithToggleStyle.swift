//
//  CustomizingToggleWithToggleStyle.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/19/23.
//

import SwiftUI

struct CheckToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button {
            configuration.isOn.toggle()
        } label: {
            Label {
                configuration.label
            } icon: {
                Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(configuration.isOn ? .accentColor : .secondary)
                    .accessibility(label: Text(configuration.isOn ? "Checked" : "Unchecked"))
                    .imageScale(.large)
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct CustomizingToggleWithToggleStyle: View {
    @State private var isOn = false
    var body: some View {
        Toggle("Switch Me", isOn: $isOn)
            .toggleStyle(CheckToggleStyle())
    }
}

#Preview {
    CustomizingToggleWithToggleStyle()
}
