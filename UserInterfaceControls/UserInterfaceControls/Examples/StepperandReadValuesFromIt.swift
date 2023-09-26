//
//  StepperandReadValuesFromIt.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct StepperandReadValuesFromIt: View {
    @State private var age = 18
    
    
    var body: some View {
        VStack {
            Stepper("Enter your age", value: $age, in: 0...130)
            Text("Your age is \(age)")
            
            
            
            Stepper("Enter your age", onIncrement: { age += 1}, onDecrement: {age -= 1})
            
            Text("Your age is \(age)")
        }
    }
}

#Preview {
    StepperandReadValuesFromIt()
}
