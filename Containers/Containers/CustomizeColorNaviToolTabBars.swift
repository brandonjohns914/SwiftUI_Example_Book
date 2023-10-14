//
//  CustomizeColorNaviToolTabBars.swift
//  Containers
//
//  Created by Brandon Johns on 10/14/23.
//

import SwiftUI

struct CustomizeColorNaviToolTabBars: View {
    var body: some View {
        NavigationStack {
            List(0..<100){
                Text("Row \($0)")
            }
            .navigationTitle("100 Rows")
            .toolbarBackground(.teal)
        }
        
        TabView {
            NavigationStack {
                List(0..<100) {
                    Text("Row \($0)")
                }
                .navigationTitle("100 Rows")
                .toolbarBackground(.orange, for: .navigationBar,  .tabBar)
            }
            .tabItem {
                Label("Rows", systemImage: "list.bullet")
            }
        }
        
        NavigationStack {
            List(0..<100) {
                Text("Row \($0)")
            }
            .navigationTitle("100 Rows")
            .toolbarBackground(.hidden)
        }
    }
}

#Preview {
    CustomizeColorNaviToolTabBars()
}
