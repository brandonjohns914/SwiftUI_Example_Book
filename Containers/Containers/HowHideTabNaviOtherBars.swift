//
//  HowHideTabNaviOtherBars.swift
//  Containers
//
//  Created by Brandon Johns on 10/14/23.
//

import SwiftUI

struct HowHideTabNaviOtherBars: View {
    @State private var showNavigationBar = true
    var body: some View {
        TabView {
            NavigationStack {
                NavigationLink("Tap Me") {
                    Text("Detail View")
                        .toolbar(.hidden, for: .tabBar)
                    
                    Text("Detail View 2")
                        .toolbar(showNavigationBar  ? .visible: .hidden)
                        .onTapGesture {
                            withAnimation {
                                showNavigationBar.toggle()
                            }
                        }
                }
                .navigationTitle("Primary View")
            }
            .tabItem {
                Label("Home", systemImage: "house")
            }
        }
    }
}

#Preview {
    HowHideTabNaviOtherBars()
}
