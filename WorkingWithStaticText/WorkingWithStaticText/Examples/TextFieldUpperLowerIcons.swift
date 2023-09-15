//
//  TextFieldUpperLowerIcons.swift
//  WorkingWithStaticText
//
//  Created by Brandon Johns on 9/15/23.
//

import SwiftUI

struct TextFieldUpperLowerIcons: View {
    @State private var name = "Brandon"
    var body: some View {
        VStack {
            Label {
                Text("Brandon Johns")
                    .foregroundColor(.primary)
                    .font(.largeTitle)
                    .padding()
                    .background(.gray.opacity(0.2))
                    .clipShape(Capsule())
            } icon: {
                RoundedRectangle(cornerRadius: 10)
                    .fill(.blue)
                    .frame(width: 64,height: 64)
            }

            TextField("Shout your name at me", text: $name)
                .textFieldStyle(.roundedBorder)
                .textCase(.uppercase)
                .padding(.horizontal)
            
            Label("Hello \(name)", systemImage:  "person.crop.circle")
                .font(.title)
                .padding()
            
            Label("Text Only", systemImage: "heart")
                .font(.title)
                .labelStyle(.titleOnly)
                .padding()
            
            Label("Icon Only", systemImage: "star")
                .font(.title)
                .labelStyle(.iconOnly)
                .padding()
            
            Label("Both", systemImage: "paperplane")
                .font(.title)
                .labelStyle(.titleAndIcon)
        
        }
    }
}

struct TextFieldUpperLowerIcons_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldUpperLowerIcons()
    }
}
