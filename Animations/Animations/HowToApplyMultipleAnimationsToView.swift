//
//  HowToApplyMultipleAnimationsToView.swift
//  Animations
//
//  Created by Brandon Johns on 10/20/23.
//

import SwiftUI

struct HowToApplyMultipleAnimationsToView: View {
    @State private var isEnabled = false
    var body: some View {
        Button("Press me") {
            isEnabled.toggle()
        }
        .foregroundColor(.white)
        .frame(width: 200, height: 200)
        .background(isEnabled ? .green : .red)
        .animation(nil , value: isEnabled)
        .clipShape(RoundedRectangle(cornerRadius: isEnabled ? 100 : 0))
        .animation(.default, value: isEnabled)
    }
}

#Preview {
    HowToApplyMultipleAnimationsToView()
}
