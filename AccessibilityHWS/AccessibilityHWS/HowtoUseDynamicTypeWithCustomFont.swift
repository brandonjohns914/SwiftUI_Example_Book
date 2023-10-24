//
//  HowtoUseDynamicTypeWithCustomFont.swift
//  AccessibilityHWS
//
//  Created by Brandon Johns on 10/24/23.
//

import SwiftUI

struct ScaledFont: ViewModifier {
    @Environment(\.sizeCategory) var sizeCategory
    
    var name: String
    var size: Double
    func body(content: Content) -> some View {
        let scaledSize = UIFontMetrics.default.scaledValue(for: size)
        
        return content.font(.custom(name, size: scaledSize))
    }
}

struct HowtoUseDynamicTypeWithCustomFont: View {
    var body: some View {
        VStack {
            Text("Scaling")
                .font(.custom("Georgia", size: 24, relativeTo: .headline))
            
            Text("This Scales")
                .font(.custom("Georgia", size: 24))
            
            Text("This is fixed")
                .font(.custom("Georgia", fixedSize: 24))
        }
    }
}

#Preview {
    HowtoUseDynamicTypeWithCustomFont()
}
