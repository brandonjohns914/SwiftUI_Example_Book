//
//  HowToCombineTextViewsTogether.swift
//  ComposingViews
//
//  Created by Brandon Johns on 10/23/23.
//

import SwiftUI

struct HowToCombineTextViewsTogether: View {
    var body: some View {
        Text("SwiftUI")
            .foregroundStyle(.red)
        + Text("Is")
            .foregroundStyle(.orange)
            .fontWeight(.black)
        + Text("Awesome")
            .foregroundStyle(.blue)
        
    }
}

#Preview {
    HowToCombineTextViewsTogether()
}
