//
//  PushNewViewOntoNavigationStack.swift
//  Navigation
//
//  Created by Brandon Johns on 10/14/23.
//

import SwiftUI
struct DetailView: View {
    var body: some View {
        Text("This is the detail view")
    }
}
struct PushNewViewOntoNavigationStack: View {
    var body: some View {
        NavigationStack {
            VStack {
                //NavigationLink("This is detail view"){
                NavigationLink {
                    DetailView()
                } label: {
                    Label("Show Detail View", systemImage: "globe")
                }
            }
            .navigationTitle("Navigation")
        }
    }
}

#Preview {
    PushNewViewOntoNavigationStack()
}
