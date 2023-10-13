//
//  BasicFormDesign.swift
//  Forms
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct BasicFormDesign: View {
    @State private var enableLogging = false
    @State private var selectedColor = "Red"
    @State private var colors = ["Red", "Green", "Blue"]
    
    
    
    var body: some View {
        Form {
            Section(footer: Text("Note: Enablling logging my slow down the app")) {
                Picker("Select a color", selection: $selectedColor) {
                    ForEach(colors, id: \.self){
                        Text($0)
                    }
                }
                .pickerStyle(.segmented)
                
                Toggle("Enable Logging", isOn: $enableLogging)
            }
            Section {
                Button("Save Changes") {
                    //
                }
            }
        }
    }
}

#Preview {
    BasicFormDesign()
}
