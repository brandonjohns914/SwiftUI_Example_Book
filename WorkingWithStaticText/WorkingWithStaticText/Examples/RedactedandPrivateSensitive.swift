//
//  RedactedandPrivateSensitive.swift
//  WorkingWithStaticText
//
//  Created by Brandon Johns on 9/15/23.
//

import SwiftUI

struct RedactedandPrivateSensitive: View {
    @Environment(\.redactionReasons) var redactionReasons
    let bio = "The rain in Spain falls mainly on the Spaniards"
    
    var body: some View {
        VStack {
            
            if redactionReasons == .placeholder {
                Text("Loading...")
                    .padding()
            } else {
                Text(bio)
                    .redacted(reason: redactionReasons)
                    .padding()
            }
        
            
            Text("This is a placeholder text")
                .font(.title)
                .redacted(reason: .placeholder)
                .padding()
            
            
            Text("Card Number")
                .font(.headline)
                .padding()
            if redactionReasons.contains(.privacy) {
                Text("[HIDDEN]")
                    .padding()
            } else {
                Text("1234 5678 9012 3456")
                    .privacySensitive()
                    .padding()
            }
        }
    }
}

struct RedactedandPrivateSensitive_Previews: PreviewProvider {
    static var previews: some View {
        RedactedandPrivateSensitive()
    }
}
