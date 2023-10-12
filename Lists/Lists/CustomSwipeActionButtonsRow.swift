//
//  CustomSwipeActionButtonsRow.swift
//  Lists
//
//  Created by Brandon Johns on 9/30/23.
//

import SwiftUI

struct CustomSwipeActionButtonsRow: View {
    
    let friends = ["Ellie", "Henry", "Maggie", "Cooper", "Penelope", "Hero", "Oreo"]
    
    @State private var total = 0
    var body: some View {
        NavigationStack {
            List {
                ForEach(1..<100) { i in
                 Text("\(i)")
                        .swipeActions(edge: .leading) {
                            Button {
                                total += i
                            }  label: {
                                Label("Add \(i)", systemImage: "plus.circle")
                                
                            }
                            .tint(.indigo)
                        }
                        .swipeActions(edge: .trailing) {
                            Button {
                                total -= i
                            } label: {
                                Label("Subtract \(i)", systemImage:  "minus.circle")
                            }
                        }
                }
            }
            .navigationTitle("Total \(total)")
            
            
            List {
                ForEach(friends, id: \.self) {
                    friend in
                    
                    Text(friend)
                        .swipeActions(allowsFullSwipe: false) {
                            Button{
                                print("muting conversation")
                            } label : {
                                Label("Mute", systemImage: "bell.slash.fill")
                            }
                            .tint(.indigo)
                            
                            Button(role: .destructive) {
                                print("Deleting, conversation")
                            } label: {
                                Label("Delete", systemImage: "trash.fill")
                            }
                        }
                }
                
            }
            
            
            
            
            List {
                Text("Pepporoni pizza")
                    .swipeActions {
                        Button("Order") {
                            print("Awesome!")
                        }
                        .tint(.green)
                    }
                Text("Pepporoni with pineapple")
                    .swipeActions() {
                        Button("Burn"){
                            print("Right on")
                        }
                        .tint(.red)
                    }
            }
            
            
            
        }
    }
}

#Preview {
    CustomSwipeActionButtonsRow()
}
