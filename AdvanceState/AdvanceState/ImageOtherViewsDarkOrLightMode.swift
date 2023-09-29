//
//  ImageOtherViewsDarkOrLightMode.swift
//  AdvanceState
//
//  Created by Brandon Johns on 9/29/23.
//

import SwiftUI

struct AdaptiveImage: View {
    @Environment(\.colorScheme) var colorScheme
    let light: Image
    let dark: Image
    
    @ViewBuilder var body: some View {
        if colorScheme == .light {
            light
        } else {
            dark
        }
    }
}

struct AdaptiveView<T: View, U: View>: View {
    
    @Environment(\.colorScheme) var colorScheme
    let light: T
    let dark: U
    
    init(light: T, dark: U){
        self.light = light
        self.dark = dark
    }
    
    init(light: () -> T, dark: () -> U) {
        self.light = light()
        self.dark = dark()
    }
    
    @ViewBuilder var body: some View {
        if colorScheme == .light {
            light
        } else {
            dark
        }
    }
}

struct ImageOtherViewsDarkOrLightMode: View {
    var body: some View {
        VStack(spacing: 20) {
            AdaptiveImage(light: Image(systemName: "sun.max"), dark: Image(systemName: "moon"))
         
            
            AdaptiveView {
                VStack {
                    Text("Light Mode")
                    Image(systemName: "sun.max")
                }
            } dark: {
                HStack {
                    Text("Dark mode")
                    Image(systemName: "moon")
                }
            }
            .font(.largeTitle)
        }
    }
}

#Preview {
    ImageOtherViewsDarkOrLightMode()
}
