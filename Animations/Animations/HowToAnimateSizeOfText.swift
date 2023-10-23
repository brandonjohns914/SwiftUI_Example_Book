//
//  HowToAnimateSizeOfText.swift
//  Animations
//
//  Created by Brandon Johns on 10/22/23.
//

import SwiftUI

struct AnimateCustomFontModifier: ViewModifier, Animatable {
    var name: String
    var size: Double
    
    var animatableData: Double {
        get { size }
        set { size = newValue}
    }
    
    func body(content: Content) -> some View {
        content
            .font(.custom(name, size: size))
    }
}

extension View {
    func animatableFont(name: String, size: Double )-> some View {
        self.modifier(AnimateCustomFontModifier(name: name , size: size) )
    }
}



struct AnimatableSystemFontModifier: ViewModifier, Animatable {
    var size: Double
    var weight: Font.Weight
    var design: Font.Design
    
    var animatableData: Double {
        get { size }
        set { size = newValue}
    }
    func body(content: Content) -> some View {
        content
            .font(.system(size: size, weight: weight, design:  design))
    }
}

extension View {
    func animatableSystemFont(size: Double, weight: Font.Weight = .regular, design: Font.Design = .default ) -> some View {
        self.modifier(AnimatableSystemFontModifier(size: size, weight: weight , design: design))
    }
}

struct HowToAnimateSizeOfText: View {
    
    @State private var fontSize = 32.0
    
    
    var body: some View {
        VStack {
            
            
            Text("Hello, World!")
                .animatableFont(name: "Georgia", size: fontSize)
                .onTapGesture {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1).repeatForever()) {
                        fontSize = 72
                    }
                }
            
            Text("Hello, World!")
                .animatableSystemFont( size: fontSize)
                .onTapGesture {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.5, blendDuration: 1).repeatForever()) {
                        fontSize = 72
                    }
                }
        }
    }
}

#Preview {
    HowToAnimateSizeOfText()
}
