//
//  FormatDatesinTextViews.swift
//  WorkingWithStaticText
//
//  Created by Brandon Johns on 9/15/23.
//

import SwiftUI

struct FormatDatesinTextViews: View {
    var body: some View {
        VStack {
            Text(Date.now.addingTimeInterval(600), style: .date)
                .padding()
            Text(Date.now.addingTimeInterval(600), style: .time)
                .padding()
            
            //relative distance from now to automattically update
            Text(Date.now.addingTimeInterval(600), style: .relative)
                .padding()
            Text(Date.now.addingTimeInterval(600), style: .timer)
                .padding()
        }
    }
}

struct FormatDatesinTextViews_Previews: PreviewProvider {
    static var previews: some View {
        FormatDatesinTextViews()
    }
}
