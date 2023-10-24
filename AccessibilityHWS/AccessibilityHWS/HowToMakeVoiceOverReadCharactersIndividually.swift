//
//  HowToMakeVoiceOverReadCharactersIndividually.swift
//  AccessibilityHWS
//
//  Created by Brandon Johns on 10/24/23.
//

import SwiftUI

struct HowToMakeVoiceOverReadCharactersIndividually: View {
    var body: some View {
        VStack {
            Text("Your password is")
            Text("abCayer-muQai")
                .font(.title)
                .speechSpellsOutCharacters()
            
        }
        .accessibilityElement(children: .combine)
    }
}

#Preview {
    HowToMakeVoiceOverReadCharactersIndividually()
}
