//
//  CustomizeViewWidthinNaviSplitView.swift
//  Navigation
//
//  Created by Brandon Johns on 10/16/23.
//

import SwiftUI

struct CustomizeViewWidthinNaviSplitView: View {
    var body: some View {
        NavigationSplitView {
            Text("Sidebar")
                .navigationSplitViewColumnWidth(min: 100, ideal: 200, max: 300)
        } content: {
           Text("Content")
                .navigationSplitViewColumnWidth(min: 100, ideal: 200, max: 300)
        } detail: {
            Text("Detail")
        }
        .navigationSplitViewStyle(.balanced)
    }
}

#Preview {
    CustomizeViewWidthinNaviSplitView()
}
