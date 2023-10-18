//
//  HowtoShowMenuWhenButtonPressed.swift
//  AlertsandMenus
//
//  Created by Brandon Johns on 10/17/23.
//

import SwiftUI

struct HowtoShowMenuWhenButtonPressed: View {
    var body: some View {
        Menu("Options") {
                    Button("Order Now", action: placeOrder)
                    Button("Adjust Order", action: adjustOrder)
                    Menu("Advanced") {
                        Button("Rename", action: rename)
                        Button("Delay", action: delay)
                    }
                    Button("Cancel", action: cancelOrder)
                }
            }

            func placeOrder() { }
            func adjustOrder() { }
            func rename() { }
            func delay() { }
            func cancelOrder() { }
        }

     

#Preview {
    HowtoShowMenuWhenButtonPressed()
}
