//
//  HowToDetectDarkMode.swift
//  AccessibilityHWS
//
//  Created by Brandon Johns on 10/24/23.
//

import SwiftUI

struct HowToDetectDarkMode: View {
    @Environment(\.colorScheme) var colorScheme
    var body: some View {
        Text(colorScheme == .dark ? "In dark mode" : "In light mode")
    }
}

#Preview {
    HowToDetectDarkMode()
}
