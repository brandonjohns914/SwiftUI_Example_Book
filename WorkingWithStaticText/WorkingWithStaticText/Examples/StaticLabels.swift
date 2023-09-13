//
//  StaticLabels.swift
//  WorkingWithStaticText
//
//  Created by Brandon Johns on 9/13/23.
//

import SwiftUI

struct StaticLabels: View {
    var body: some View {
        VStack {
            Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
                .lineLimit(3)
                .frame(width: 200)
                .padding(.bottom)
                .padding()
          
            Text("This is some longer text that is limited to three lines maximum, so anything more than that will cause the text to clip.")
                .lineLimit(3...6)
                .frame(width: 200)
                .padding(.bottom)
                .padding()
            Text("This is always two lines")
                .lineLimit(2, reservesSpace: true)
                .padding(.bottom)
                .padding()
            Text("This is an extremely long string of text that will never fit even the widest of iOS devices even if the user has their Dynamic Type setting as small as is possible, so in theory it should definitely demonstrate truncationMode().")
                .lineLimit(1)
                .truncationMode(.middle)
        }
    }
}

struct StaticLabels_Previews: PreviewProvider {
    static var previews: some View {
        StaticLabels()
    }
}
