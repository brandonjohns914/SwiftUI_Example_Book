//
//  CreateToggleSwitch.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI
struct EmailList: Identifiable {
    var id: String
    var isSubscribed = false
}

struct CreateToggleSwitch: View {
    @State private var showGreeting = true
    @State private var isOn = false
    
    @State var lists = [
    
        EmailList(id: "Monthly Updates", isSubscribed: true),
        EmailList(id: "News Flashes", isSubscribed: true),
        EmailList(id: "Special Offers", isSubscribed: true)
    ]
    
    
    var body: some View {
        VStack {
            Toggle("Show welcome messsage", isOn: $showGreeting)
                .toggleStyle(SwitchToggleStyle(tint: .blue))
            
            if showGreeting {
                Text("Hello, World!")
            }
            
            Toggle("Filter", isOn: $isOn)
                .toggleStyle(.button)
                .tint(.mint)
            
            Form {
                Section {
                    ForEach($lists) { $list in
                        Toggle(list.id, isOn: $list.isSubscribed)}
                }
            }
            
            Section {
                Toggle("Subscribe to all", sources: $lists, isOn: \.isSubscribed)
            }
        }
    }
}

#Preview {
    CreateToggleSwitch()
}
