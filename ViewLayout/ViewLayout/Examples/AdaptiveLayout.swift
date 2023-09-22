//
//  AdaptiveLayout.swift
//  ViewLayout
//
//  Created by Brandon Johns on 9/22/23.
//

import SwiftUI

struct OptionsView: View {
    var body: some View {
        Button("Log in") { }
            .buttonStyle(.borderedProminent)

        Button("Create Account") { }
            .buttonStyle(.bordered)

        Button("Settings") { }
            .buttonStyle(.bordered)

        Spacer().frame(width: 50, height: 50)

        Button("Need Help?") { }
    }
}

struct AdaptiveLayout: View {
    let terms = String(repeating: "abcde", count: 100)
    var body: some View {
        VStack {
            ViewThatFits {
                HStack(content: OptionsView.init)
                VStack(content: OptionsView.init)
            }
            
            ViewThatFits {
                HStack {
                    Text("The rain")
                    Text("in Spain")
                    Text("falls mainly")
                    Text("on the Spaniards")
                }
                
                VStack {
                    Text("The rain")
                    Text("in Spain")
                    Text("falls mainly")
                    Text("on the Spaniards")
                }
            }
            .font(.title)
            
            ViewThatFits(in: .vertical) {
                Text(terms)
                
                ScrollView {
                    Text(terms)
                }
            }
        }
    }
}

#Preview {
    AdaptiveLayout()
}
