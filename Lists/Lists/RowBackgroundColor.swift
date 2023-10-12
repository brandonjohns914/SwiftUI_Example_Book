//
//  RowBackgroundColor.swift
//  Lists
//
//  Created by Brandon Johns on 9/30/23.
//

import SwiftUI

struct RowBackgroundColor: View {
    var body: some View {
        List {
            ForEach(0..<10) {
                Text("Row \($0)")
            }
            .listRowBackground(Color.blue)
        }
    }
}

#Preview {
    RowBackgroundColor()
}
