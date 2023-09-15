//
//  UsersSelectText.swift
//  WorkingWithStaticText
//
//  Created by Brandon Johns on 9/15/23.
//

import SwiftUI

struct UsersSelectText: View {
    var body: some View {
        VStack(spacing: 50){
            Text("You cant touch this")
            Text("Break it down!")
            
            List(0..<100) {
                 index in Text("Row \(index)")
            }
        }.textSelection(.enabled)
    }
}

struct UsersSelectText_Previews: PreviewProvider {
    static var previews: some View {
        UsersSelectText()
    }
}
