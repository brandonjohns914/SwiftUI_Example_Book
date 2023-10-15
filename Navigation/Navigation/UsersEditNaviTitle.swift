//
//  UsersEditNaviTitle.swift
//  Navigation
//
//  Created by Brandon Johns on 10/14/23.
//

import SwiftUI

struct UsersEditNaviTitle: View {
    
    @State private var title = "Welcome"
    
    var body: some View {
        NavigationStack {
            Text("Hello, World!")
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
                .toolbarRole(.editor)
        }
    }
}

#Preview {
    UsersEditNaviTitle()
}
