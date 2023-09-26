//
//  CreatePickerandReadValuesFromit.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct CreatePickerandReadValuesFromit: View {
    var colors = ["Red", "Green", "Blue", "Tartan"]
    
    @State private var selectedColor = "Red"
    var body: some View {
        VStack {
            Picker("Please choose a color", selection: $selectedColor) {
                ForEach(colors, id: \.self){
                    Text($0)
                }
            }
            Text("you selected: \(selectedColor)")
        }
    }
}

#Preview {
    CreatePickerandReadValuesFromit()
}
