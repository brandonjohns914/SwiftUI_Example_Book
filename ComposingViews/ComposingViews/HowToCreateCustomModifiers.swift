//
//  HowToCreateCustomModifiers.swift
//  ComposingViews
//
//  Created by Brandon Johns on 10/23/23.
//

import SwiftUI

struct PrimaryLabel: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.red)
            .foregroundStyle(.white)
            .font(.largeTitle)
    }
}

struct HowToCreateCustomModifiers: View {
    var body: some View {
        Text("Hello, SwiftUI")
            .modifier(PrimaryLabel())
    }
}

#Preview {
    HowToCreateCustomModifiers()
}
