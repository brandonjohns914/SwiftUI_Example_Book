//
//  SafeAreaCustomContent.swift
//  ViewLayout
//
//  Created by Brandon Johns on 9/22/23.
//

//works witt list and from

import SwiftUI

struct SafeAreaCustomContent: View {
    var body: some View {
        NavigationStack {
            List(0..<100) {i in
                Text("Row \(i)")
            }
            .navigationTitle("Select a row")
            .safeAreaInset(edge: .bottom) {
                Text("Outside safe area")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(.indigo)
            }
        }
        NavigationStack {
            List(0..<100) {i in
                Text("Row \(i)")
            }
            .navigationTitle("Select a row")
            .safeAreaInset(edge: .bottom, alignment: .trailing){
                Button {
                    print("Show Help")
                } label: {
                    Image(systemName: "info.circle.fill")
                        .font(.largeTitle)
                        .symbolRenderingMode(.multicolor)
                        .padding(.trailing)
                }
                .accessibilityLabel("Show help")
            }
        }
    }
}

#Preview {
    SafeAreaCustomContent()
}
