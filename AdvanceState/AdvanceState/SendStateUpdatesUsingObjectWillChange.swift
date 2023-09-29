//
//  SendStateUpdatesUsingObjectWillChange.swift
//  AdvanceState
//
//  Created by Brandon Johns on 9/29/23.
//

import SwiftUI

class UserAuthentication: ObservableObject {
    var username = "Ellie"{
        willSet {
            objectWillChange.send()
        }
    }
}

struct SendStateUpdatesUsingObjectWillChange: View {
    
    @StateObject var user = UserAuthentication()
    
    var body: some View {
        VStack(alignment: .leading) {
            TextField("Enter your name", text: $user.username)
            Text("Your username is \(user.username)")
        }
    }
}

#Preview {
    SendStateUpdatesUsingObjectWillChange()
}
