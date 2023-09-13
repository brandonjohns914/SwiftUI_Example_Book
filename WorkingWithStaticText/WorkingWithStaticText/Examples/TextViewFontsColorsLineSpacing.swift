//
//  TextViewFontsColorsLineSpacing.swift
//  WorkingWithStaticText
//
//  Created by Brandon Johns on 9/13/23.
//

import SwiftUI

struct TextViewFontsColorsLineSpacing: View {
    var body: some View {
        VStack {
            
            Text("Hello, world!")
                .fontDesign(.serif)
                .padding()
            
            Text("Hello, world!")
                .fontWidth(.condensed)
                .padding()
            
            
            
            Text("This is an extremely long text string that will never fit even on the widest of phones without wrapping")
                .font(.largeTitle)
                .frame(width: 300)
                .padding()
            
            Text("The best laid plans")
                .foregroundColor(.red)
                .padding()
            
            Text("The best laid plans")
                .foregroundStyle(.blue.gradient)
                .padding()
            
            Text("The best laid plans")
                .padding()
                .background(.yellow)
                .foregroundColor(.white)
                .font(.headline)
            
            Text("This is an extremely long text string that will never fit even the widest of phones without wrapping")
                .font(.largeTitle)
                .lineSpacing(50)
                .frame(width: 300)
            
        }
    }
}

struct TextViewFontsColorsLineSpacing_Previews: PreviewProvider {
    static var previews: some View {
        TextViewFontsColorsLineSpacing()
    }
}
