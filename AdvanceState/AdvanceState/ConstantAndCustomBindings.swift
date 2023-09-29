//
//  ConstantAndCustomBindings.swift
//  AdvanceState
//
//  Created by Brandon Johns on 9/29/23.
//

import SwiftUI

struct ConstantAndCustomBindings: View {
    @State private var username = ""
    
    @State private var firstToggle = false
    @State private var secondToggle = false
    
    var body: some View {
        VStack(spacing:20) {
            
            let firstBinding = Binding(
                get: {self.firstToggle},
                set: { self.firstToggle = $0
                    if $0 == true {
                        self.secondToggle = false
                    }
                }
            )
            
            
            let secondBinding = Binding (
                get: {self.secondToggle},
                set: { self.secondToggle = $0
                    if $0 == true {
                        self.firstToggle = false
                    }
                }
            )
            
            Toggle(isOn: firstBinding) {
                Text("First toggle")
            }
            Toggle(isOn: secondBinding) {
                Text("Second toggle")
            }
            
            let binding = Binding(
                get: {self.username},
                set: {self.username = $0 }
            )
            
                TextField("Enter your name", text: binding)
            
            Toggle(isOn: .constant(true)){
                Text("Show advance options ")
            }
            
        }
    }
}

extension ConstantAndCustomBindings {
    
}

#Preview {
    ConstantAndCustomBindings()
}
