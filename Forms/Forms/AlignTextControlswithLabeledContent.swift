//
//  AlignTextControlswithLabeledContent.swift
//  Forms
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct AlignTextControlswithLabeledContent: View {
    @State private var brightness = 0.5
    var body: some View {
        Form {
            LabeledContent("This is important", value: "Value goes here")
            LabeledContent("This is important") {
                Image(systemName: "exclamationmark.triangle")
            }
            
            LabeledContent {
                Slider(value: $brightness)
            } label: {
                Text("Brightness")
            }
        }
    }
}

#Preview {
    AlignTextControlswithLabeledContent()
}
