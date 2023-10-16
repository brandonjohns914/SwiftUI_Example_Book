//
//  ProgrammaticNavigationSwiftUI.swift
//  Navigation
//
//  Created by Brandon Johns on 10/16/23.
//

import SwiftUI

struct ProgrammaticNavigationSwiftUI: View {
    @State private var presentedNumbers = [Int]()
    
    var body: some View {
        NavigationStack (path: $presentedNumbers) {
            List(1..<50) { i in
                NavigationLink( value: i) {
                    Label("Row \(i)", systemImage: "\(i).circle")
                }
            }
            .navigationDestination(for: Int.self) { i in
                VStack {
                    Text("Detail \(i)")
                    Button("Go to Next") {
                        presentedNumbers.append(i + 1)
                    }
                }
            }
                .navigationTitle("Navigation")
        }
    }
}

#Preview {
    ProgrammaticNavigationSwiftUI()
}
