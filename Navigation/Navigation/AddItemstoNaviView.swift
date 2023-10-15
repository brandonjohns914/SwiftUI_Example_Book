//
//  AddItemstoNaviView.swift
//  Navigation
//
//  Created by Brandon Johns on 10/14/23.
//

import SwiftUI

struct AddItemstoNaviView: View {
    var body: some View {
        NavigationStack {
            Text("SwiftUI")
                .navigationTitle("Welcome")
                .toolbar {
                    
                    ToolbarItemGroup(placement: .primaryAction) {
                        
                        Button("About") {
                            print("About tapped")
                        }
                        
                        Button("Help") {
                            print("Help Tapped")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading ) {
                        Button("Test") {
                            print("Test tapped")
                        }
                    }
                    
                    ToolbarItemGroup(placement: .secondaryAction) {
                        Button("Settings") {
                            print("settings tapped")
                        }
                        
                        Button("Email me") {
                            print("Email me Tapped")
                        }
                    }
                    
                }
            
        }
    }
}

#Preview {
    AddItemstoNaviView()
}
