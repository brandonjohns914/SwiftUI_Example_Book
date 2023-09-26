//
//  ProgessOnTaskUsingProgessView.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct ProgessOnTaskUsingProgessView: View {
    @State private var downloadAmount = 0.0
    let timer = Timer.publish(every: 0.1 , on: .main, in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing: 10) {
            
            ProgressView("Downloading...")
            
            ProgressView("Downloading...", value: downloadAmount, total: 100)
                .onReceive(timer) { _ in
                    if downloadAmount < 100 {
                        downloadAmount += 2
                    }
                }
        }
    }
}

#Preview {
    ProgessOnTaskUsingProgessView()
}
