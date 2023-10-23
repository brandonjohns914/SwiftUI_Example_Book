//
//  HowToOverrideAnimationsWithTransactions.swift
//  Animations
//
//  Created by Brandon Johns on 10/22/23.
//

import SwiftUI

struct HowToOverrideAnimationsWithTransactions: View {
    @State private var isZoomed = false
    @State private var isZoomed1 = false
    @State private var isZoomed2 = false
    var body: some View {
        Spacer()
        VStack {
            Button("Toggle Zoom") {
                isZoomed.toggle()
            }
            Spacer()
                .frame(height: 100)
            
            Text("Zoom Text")
                .font(.title)
                .scaleEffect(isZoomed ? 3 : 1 )
                .animation(.easeInOut(duration: 2), value: isZoomed)
        }
         Spacer()
        VStack {
            Button("Toggle Zoom") {
                var transaction = Transaction(animation: .linear)
                transaction.disablesAnimations = true
                
                withTransaction(transaction) {
                    isZoomed1.toggle()
                }
            }
            Spacer()
                .frame(height: 100)
            
            Text("Zoom Text")
                .font(.title)
                .scaleEffect(isZoomed1 ? 3 : 1 )
                .animation(.easeInOut(duration: 2), value: isZoomed1)
        }
        Spacer()
        
        VStack {
            Button("Toggle Zoom") {
                var transaction = Transaction(animation: .linear)
                transaction.disablesAnimations = true
                
                withTransaction(transaction) {
                    isZoomed2.toggle()
                }
            }
            Spacer()
                .frame(height: 100)
            
            Text("Zoom Text 1")
                .font(.title)
                .scaleEffect(isZoomed2 ? 3 : 1 )
                .animation(.easeInOut(duration: 2), value: isZoomed2)
            
            Text("Zoom Text 2")
                .font(.title)
                .scaleEffect(isZoomed2 ? 3 : 1 )
                .transaction { t in
                    t.animation = .none
                }
        }
        Spacer()
    }
}

#Preview {
    HowToOverrideAnimationsWithTransactions()
}
