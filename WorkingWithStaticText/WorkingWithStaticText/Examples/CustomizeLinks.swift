//
//  CustomizeLinks.swift
//  WorkingWithStaticText
//
//  Created by Brandon Johns on 9/15/23.
//

import SwiftUI

struct CustomizeLinks: View {
    var body: some View {
        VStack {
            Link("Visit Apple", destination: URL(string: "https://apple.com")!)
            Text("[Visit Apple](https://apple.com)")
        }
        .environment(\.openURL, OpenURLAction(handler: handleURL))
    }
    
    func handleURL(_ url: URL) -> OpenURLAction.Result {
        print("Handle \(url) somehow")
        return .handled
    }
}


struct CustomizeLinks_Previews: PreviewProvider {
    static var previews: some View {
        CustomizeLinks()
    }
}
