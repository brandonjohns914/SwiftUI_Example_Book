//
//  EmbeddedViewsInTabView.swift
//  Containers
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct EmbeddedViewsInTabView: View {
    @State var selectedView = 1
    var body: some View {
        TabView(selection: $selectedView) {
            Button("Show Second View") {
                selectedView = 2
            }
            .padding()
            .tabItem {
                Label("First", systemImage: "1.circle")
            }
            .tag(1)
            
            Button("Show First View ") {
                selectedView = 1
            }
            .padding()
            .tabItem {
                Label("Second", systemImage: "2.circle")
            }
            .tag(2)
        }
        
        
        
        TabView {
            Text("First View ")
                .padding()
                .tabItem {
                    Label("First", systemImage: "1.circle")
                }
                .tag(1)
            
            Text("Second View")
                .padding()
                .tabItem {
                    Image(systemName:"2.circle")
                    Text("Second")
                }
                .tag(2)
        }
    }
}

#Preview {
    EmbeddedViewsInTabView()
}
