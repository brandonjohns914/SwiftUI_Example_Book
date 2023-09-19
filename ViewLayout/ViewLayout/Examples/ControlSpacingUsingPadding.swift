//
//  ControlSpacingUsingPadding.swift
//  ViewLayout
//
//  Created by Brandon Johns on 9/18/23.
//

import SwiftUI

struct ControlSpacingUsingPadding: View {
    var body: some View {
        VStack(alignment: .center, spacing: 20)
        {
            Text("Using")
            Text("SwiftUI")
                .padding()
            Text("Rocks")
            
            
            Text("Using")
            Text("SwiftUI")
                .padding(.bottom)
            Text("Rocks")
            
            Text("Using")
            Text("SwiftUI")
                .padding(.bottom, 100)
            Text("Rocks")
        }
    }
}

struct ControlSpacingUsingPadding_Previews: PreviewProvider {
    static var previews: some View {
        ControlSpacingUsingPadding()
    }
}
