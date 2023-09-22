//
//  StopSystemGesturesFromInterferingwithyourown.swift
//  ViewLayout
//
//  Created by Brandon Johns on 9/22/23.
//

import SwiftUI

struct StopSystemGesturesFromInterferingwithyourown: View {
    @State private var input = 0.0
    var body: some View {
    Text("Current value: \(input)")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .contentShape(Rectangle())
            .gesture(
                DragGesture().onChanged { value in
                    input = value.location.y - value.startLocation.y
                }
            )
            .defersSystemGestures(on: .vertical)
        
    }
}

#Preview {
    StopSystemGesturesFromInterferingwithyourown()
}
