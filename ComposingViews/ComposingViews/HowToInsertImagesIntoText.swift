//
//  HowToInsertImagesIntoText.swift
//  ComposingViews
//
//  Created by Brandon Johns on 10/23/23.
//

import SwiftUI

struct HowToInsertImagesIntoText: View {
    var body: some View {
        (Text("Hello") + Text(Image(systemName: "star")) + Text("World"))
            .foregroundStyle(.blue)
            .font(.largeTitle)
        
        
        Text("Goodbye") + Text(Image(systemName: "star")) + Text("World")
            .foregroundStyle(.blue)
            .font(.largeTitle)
    }
}

#Preview {
    HowToInsertImagesIntoText()
}
