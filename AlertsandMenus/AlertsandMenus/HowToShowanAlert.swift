//
//  HowToShowanAlert.swift
//  AlertsandMenus
//
//  Created by Brandon Johns on 10/16/23.
//

import SwiftUI

struct TVShow: Identifiable {
    
    var id: String { name }
    let name: String 
}

struct HowToShowanAlert: View {
    @State private var selectedShow: TVShow?
    
    @State private var showingAlert = false
    var body: some View {
        VStack(spacing: 20) {
            Text("What is your favorite TV show?")
                .font(.headline)
            
            Button("Select Ted Lasso") {
                selectedShow = TVShow(name: "Ted Lasso")
            }
            
            Button("Select Bridgerton"){
                selectedShow = TVShow(name: "Bridgerton")
            }
            
        }
        .alert(item: $selectedShow) { show in
            Alert(title: Text(show.name), message: Text("Great choice!"), dismissButton: .cancel())
        }
        
        VStack {
            Button("Show Alert") {
                showingAlert = true
            }
            .alert("Important message", isPresented: $showingAlert) {
                Button("OK", role: .cancel) {}
            }
            
            Button("Show Alert") {
                showingAlert = true
            }
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Important message"), message: Text("Wear sunscreen"),  dismissButton: .default(Text("Got it!")))
            }
        }
    }
}

#Preview {
    HowToShowanAlert()
}
