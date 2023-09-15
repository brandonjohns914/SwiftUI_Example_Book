//
//  AddSpacingBetweenLettersText.swift
//  WorkingWithStaticText
//
//  Created by Brandon Johns on 9/14/23.
//

import SwiftUI

struct AddSpacingBetweenLettersText: View {
    @State private var amount = 50.0
    
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .tracking(20)
                .padding()
            
            Text("ffi")
                .font(.custom("AmericanTypewriter", size: 72))
                .kerning(amount)
                .padding()
            Text("ffi")
                .font(.custom("AmericanTypewriter", size: 72))
                .tracking(amount)
                .padding()
            
            Slider(value: $amount, in: 0...100){
                Text("Adjust the amount of spacing")
            }
            .padding()
            
        }
    }
}

struct AddSpacingBetweenLettersText_Previews: PreviewProvider {
    static var previews: some View {
        AddSpacingBetweenLettersText()
    }
}
