//
//  AdjustTextAlignmentMultilineTextAlignment.swift
//  WorkingWithStaticText
//
//  Created by Brandon Johns on 9/14/23.
//

import SwiftUI

struct AdjustTextAlignmentMultilineTextAlignment: View {
    let alignments: [TextAlignment] = [.leading, .center, .trailing]
    
    @State private var alignment = TextAlignment.leading
    
    var body: some View {
        VStack {
            Picker("Text alignment", selection: $alignment) {
                ForEach(alignments, id: \.self){
                    alignment in
                    Text(String(describing: alignment))
                }
            }
            
            
            Text("This is an extremely long text string that will never fit even the widdest of phones without wrapping")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .frame(width: 300)
        }
    }
}

struct AdjustTextAlignmentMultilineTextAlignment_Previews: PreviewProvider {
    static var previews: some View {
        AdjustTextAlignmentMultilineTextAlignment()
    }
}
