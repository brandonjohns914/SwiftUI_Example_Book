//
//  TwoThreeColumnLayoutNavigationSplitView.swift
//  Navigation
//
//  Created by Brandon Johns on 10/16/23.
//

import SwiftUI

struct TwoThreeColumnLayoutNavigationSplitView: View {
    var body: some View {
        NavigationSplitView {
            List(1..<50) { i in
                NavigationLink("Row \(i)", value: i)
            }
            .navigationDestination(for: Int.self) {
                Text("Selected row \($0)")
            }
            .navigationTitle("Split View")
        } detail: {
            Text("Please select a row")
        }
    }
}

#Preview {
    TwoThreeColumnLayoutNavigationSplitView()
}
