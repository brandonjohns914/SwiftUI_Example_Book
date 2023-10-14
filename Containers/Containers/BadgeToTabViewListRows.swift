//
//  BadgeToTabViewListRows.swift
//  Containers
//
//  Created by Brandon Johns on 10/12/23.
//

import SwiftUI

struct BadgeToTabViewListRows: View {
    var body: some View {
        TabView {
            Text("Your home screen here")
                .tabItem {
                    
                    Label("Home", systemImage: "house")
                }
                .badge(5)
            
            
        }
        List {
            Text("Wi-Fi")
                .badge("LAN Solo")
            
            Text("Bluetooth")
                .badge("On")
        }
    }
}

#Preview {
    BadgeToTabViewListRows()
}
