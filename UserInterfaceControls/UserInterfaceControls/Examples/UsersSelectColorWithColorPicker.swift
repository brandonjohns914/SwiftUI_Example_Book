//
//  UsersSelectColorWithColorPicker.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct UsersSelectColorWithColorPicker: View {
    @State private var bgColor = Color.red
    
    var body: some View {
        VStack {
            ColorPicker("Set the background color", selection: $bgColor, supportsOpacity: false)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(bgColor)
    }
}

#Preview {
    UsersSelectColorWithColorPicker()
}
