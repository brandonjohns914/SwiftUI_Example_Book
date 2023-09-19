//
//  CustomFrame.swift
//  ViewLayout
//
//  Created by Brandon Johns on 9/18/23.
//

import SwiftUI

struct CustomFrame: View {
    var body: some View {
        VStack(alignment: .center, spacing: 25) {
            Button{
                print("Button Tapped")
            } label: {
                Text("Welcome")
                    .frame(minWidth: 0, maxWidth: 200, minHeight: 0, maxHeight: 200)
            }
            
            Text("Please log in")
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
                .font(.largeTitle)
                .foregroundColor(.white)
                .background(.red)
        }
    }
}

struct CustomFrame_Previews: PreviewProvider {
    static var previews: some View {
        CustomFrame()
    }
}
