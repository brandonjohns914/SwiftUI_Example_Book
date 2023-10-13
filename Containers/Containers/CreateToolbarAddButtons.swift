//
//  CreateToolbarAddButtons.swift
//  Containers
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct CreateToolbarAddButtons: View {
    var body: some View {
        NavigationStack {
            Text("Hello, World!").padding()
                .navigationTitle("SwiftUI")
                .toolbar {
                    ToolbarItemGroup(placement: .bottomBar) {
                        Button("First") {
                            print("Pressed")
                        }
                        
                        Spacer()
                        
                        Button("Second") {
                            print("Pressed")
                        }
                    }
                }
        }
    }
}

#Preview {
    CreateToolbarAddButtons()
}
