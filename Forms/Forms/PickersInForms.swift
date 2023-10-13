//
//  PickersInForms.swift
//  Forms
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct PickersInForms: View {
    @State private var selectedStrength = "Mild"
    let strengths = ["Mild", "Medium", "Mature"]
    
    var body: some View {
        NavigationStack {
            Form {
                Section {
                    Picker("Strength", selection: $selectedStrength) {
                        ForEach(strengths, id: \.self) {
                            Text($0)
                        }
                    }
                    .pickerStyle(.wheel)
                }
            }
            .navigationTitle("Select your cheese ")
        }
    }
}

#Preview {
    PickersInForms()
}
