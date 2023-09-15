//
//  MarkDownContentText.swift
//  WorkingWithStaticText
//
//  Created by Brandon Johns on 9/15/23.
//

import SwiftUI

struct MarkDownContentText: View {
    let markdownText: LocalizedStringKey = "* this is **bold** text, this is, *italic* text, and this is ***bold, italic*** text."
    var body: some View {
        VStack {
            Text("This is a regular text.")
            Text("* this is **bold** text, this is, *italic* text, and this is ***bold, italic*** text.")
            Text("~~A strikethrough example~~")
            Text("`Monospaced works too`")
            Text("Visit Apple: [click here](https://apple.com)")
                .tint(.indigo)
            Text(markdownText)
            
        }
    }
}

struct MarkDownContentText_Previews: PreviewProvider {
    static var previews: some View {
        MarkDownContentText()
    }
}
