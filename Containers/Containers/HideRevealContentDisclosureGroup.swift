//
//  HideRevealContentDisclosureGroup.swift
//  Containers
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct HideRevealContentDisclosureGroup: View {
    @State private var revealDetails = false 
    var body: some View {
        
        DisclosureGroup("Show Terms", isExpanded: $revealDetails) {
                    Text("Long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here long terms and conditions here.")
                }
                .frame(width: 300)
    }
}

#Preview {
    HideRevealContentDisclosureGroup()
}
