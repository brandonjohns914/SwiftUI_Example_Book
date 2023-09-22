//
//  LayoutPriority.swift
//  ViewLayout
//
//  Created by Brandon Johns on 9/19/23.
//

import SwiftUI

struct LayoutPriority: View {
    var body: some View {
        HStack {
         Text("The rain in Spain falls mainly on the Spaniards")
        Text("Knowledge is power, France is bacon")
                .layoutPriority(1)
        }
        .font(.largeTitle)
    }
}

struct LayoutPriority_Previews: PreviewProvider {
    static var previews: some View {
        LayoutPriority()
    }
}
