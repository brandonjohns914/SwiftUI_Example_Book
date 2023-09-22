//
//  TwoViewsSameWidthorHeight.swift
//  ViewLayout
//
//  Created by Brandon Johns on 9/22/23.
//

import SwiftUI

struct TwoViewsSameWidthorHeight: View {
    var body: some View {
        VStack {
            HStack {
                Text("This is a short string.")
                    .padding()
                    .frame(maxHeight: .infinity)
                    .background(.red)
                
                Text("This is a very long strign with lots and lots of text that will definitely run across multiple lines because its just so long.")
                    .padding()
                    .frame(maxHeight: .infinity)
                    .background(.green)
            }
            .fixedSize(horizontal: false, vertical: true)
            .frame(maxHeight: 200)
            
            VStack {
                Button("Log in"){}
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.red)
                    .clipShape(Capsule())
                
                Button("Rest Password") {}
                    .foregroundColor(.white)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.red)
                    .clipShape(Capsule())
            }
            .fixedSize(horizontal: true, vertical: false)
        }
    }
}
#Preview {
    TwoViewsSameWidthorHeight()
}
