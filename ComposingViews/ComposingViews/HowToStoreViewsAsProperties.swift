//
//  HowToStoreViewsAsProperties.swift
//  ComposingViews
//
//  Created by Brandon Johns on 10/23/23.
//

import SwiftUI

struct HowToStoreViewsAsProperties: View {
    let dog = Text("Ellie")
        .bold()
    
    let subtitle = Text("Dog")
        .foregroundStyle(.secondary)
    
    var body: some View {
        VStack {
            dog
                .foregroundStyle(.blue)
            subtitle
        }
    }
}

#Preview {
    HowToStoreViewsAsProperties()
}
