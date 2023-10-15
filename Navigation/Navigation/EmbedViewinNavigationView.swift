//
//  EmbedViewinNavigationView.swift
//  Navigation
//
//  Created by Brandon Johns on 10/14/23.
//

import SwiftUI

struct EmbedViewinNavigationView: View {
    var body: some View {
        NavigationStack {
            Text("SwiftUI")
                .navigationTitle("Welcome")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    EmbedViewinNavigationView()
}
