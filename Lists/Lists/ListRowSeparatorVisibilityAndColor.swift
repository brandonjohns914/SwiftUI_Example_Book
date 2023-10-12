//
//  ListRowSeparatorVisibilityAndColor.swift
//  Lists
//
//  Created by Brandon Johns on 9/30/23.
//

import SwiftUI

struct ListRowSeparatorVisibilityAndColor: View {
    var body: some View {
        List {
            ForEach(1..<100) { index in
            Text("Row \(index)")
                    //.listRowSeparator(.hidden)
                    .listRowSeparatorTint(.blue)
            }
        }
    }
}

#Preview {
    ListRowSeparatorVisibilityAndColor()
}
