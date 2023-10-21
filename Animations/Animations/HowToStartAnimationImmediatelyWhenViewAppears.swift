//
//  HowToStartAnimationImmediatelyWhenViewAppears.swift
//  Animations
//
//  Created by Brandon Johns on 10/20/23.
//

import SwiftUI

struct HowToStartAnimationImmediatelyWhenViewAppears: View {
    @State var scale = 1.0
    
    var body: some View {
        VStack {
            
            Circle()
                .frame(width: 200, height: 200)
                .scaleEffect(scale)
                .foregroundColor(.blue)
                .onAppear {
                    let baseAnimation = Animation.easeInOut(duration: 1)
                    let repeated = baseAnimation.repeatForever(autoreverses: true)
                    
                    withAnimation(repeated) {
                        scale = 0.5
                    }
                }
                .padding()
            
            Circle()
                .frame(width: 200, height: 200)
                .scaleEffect(scale)
                .foregroundColor(.red)
                .animateForever (autoreverses: true) {
                    scale = 0.5
                }
        }
    }
}

#Preview {
    HowToStartAnimationImmediatelyWhenViewAppears()
}


extension View {
    
    func animate(using animation: Animation = .easeInOut( duration: 1), _ action: @escaping () -> Void) -> some View {
        onAppear {
            withAnimation(animation) {
                action()
            }
        }
    }
    
    func animateForever(using animation: Animation = .easeInOut(duration: 1), autoreverses: Bool = false, _ action: @escaping () -> Void) -> some View {
        let repeated = animation.repeatForever(autoreverses: autoreverses)
        
        return onAppear {
            withAnimation(repeated) {
                action()
            }
        }
    }
}
