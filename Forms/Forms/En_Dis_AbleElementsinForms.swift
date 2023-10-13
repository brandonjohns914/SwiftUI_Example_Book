//
//  En_Dis_AbleElementsinForms.swift
//  Forms
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct En_Dis_AbleElementsinForms: View {
    @State private var agreedToTerms = false
    
    var body: some View {
        Form {
            Section {
                Toggle("Agree to terms and conditions", isOn: $agreedToTerms)
            }
            
            Section {
                Button("Continue") {
                    print("Thank you!")
                }
                .disabled(agreedToTerms == false )
            }
        }
    }
}

#Preview {
    En_Dis_AbleElementsinForms()
}
