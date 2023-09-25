//
//  HideScrollIndicatorsinScrollView.swift
//  StacksGridsScrollviews
//
//  Created by Brandon Johns on 9/25/23.
//

import SwiftUI

struct HideScrollIndicatorsinScrollView: View {
    var body: some View {
        List(1..<100){ i in
            Text("Row \(i)")
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    HideScrollIndicatorsinScrollView()
}
