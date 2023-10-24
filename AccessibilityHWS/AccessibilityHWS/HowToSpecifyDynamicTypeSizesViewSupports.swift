//
//  HowToSpecifyDynamicTypeSizesViewSupports.swift
//  AccessibilityHWS
//
//  Created by Brandon Johns on 10/24/23.
//

import SwiftUI

struct HowToSpecifyDynamicTypeSizesViewSupports: View {
    var body: some View {
        
        VStack {
            Text("This will stay small")
                .dynamicTypeSize(.small)
            Text("This wont go above large")
                .dynamicTypeSize(...DynamicTypeSize.large)
            Text("Thios will scale within a range")
                .dynamicTypeSize(DynamicTypeSize.large...DynamicTypeSize.xxxLarge)
            Text("This will scale to any size")
        }
    }
}

#Preview {
    HowToSpecifyDynamicTypeSizesViewSupports()
}
