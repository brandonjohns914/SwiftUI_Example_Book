//
//  CustomizingButtonWithButtonStyle.swift
//  TransformingViews
//
//  Created by Brandon Johns on 10/19/23.
//

import SwiftUI

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundColor(.white)
            .clipShape(Capsule())
    }
}

struct GrowingButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .scaleEffect(configuration.isPressed ? 1.2 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
        }
}

struct CustomizingButtonWithButtonStyle: View {
    var body: some View {
        VStack(spacing: 20) {
            Button("Press me") {
                print("Button Pressed")
            }
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .clipShape(Capsule())
            
            Button("Press me") {
                print("Button Pressed")
            }
            .buttonStyle(BlueButton())
            
            Button("Press me") {
                print("Button Pressed")
            }
            .buttonStyle(GrowingButton())
        }
    }
}

#Preview {
    CustomizingButtonWithButtonStyle()
}
