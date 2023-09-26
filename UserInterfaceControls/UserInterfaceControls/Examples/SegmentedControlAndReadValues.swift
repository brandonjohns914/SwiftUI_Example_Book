//
//  SegmentedControlAndReadValues.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct SegmentedControlAndReadValues: View {
    @State private var favoriteColor = 0
    
    var body: some View {
        VStack {
            Picker("What is your favorite color?", selection: $favoriteColor) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
            .pickerStyle(.segmented)
            
            Text("Value: \(favoriteColor)")
        }
    }
}

#Preview {
    SegmentedControlAndReadValues()
}
