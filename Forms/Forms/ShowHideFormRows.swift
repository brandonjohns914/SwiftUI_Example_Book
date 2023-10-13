//
//  ShowHideFormRows.swift
//  Forms
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct ShowHideFormRows: View {
    @State private var showingAdvanceOptions = false
    @State private var enableLogging = false
    
    var body: some View {
        Form {
            Section {
                Toggle("Show advanced options", isOn: $showingAdvanceOptions.animation())
                
                if showingAdvanceOptions {
                    Toggle("Enable Logging", isOn: $enableLogging)
                }
            }
        }
    }
}

#Preview {
    ShowHideFormRows()
}
