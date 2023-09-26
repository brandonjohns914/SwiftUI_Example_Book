//
//  DatePickerandReadValues.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct DatePickerandReadValues: View {
    @State private var birthDate = Date.now
    @State private var date = Date.now
    
    var body: some View {
        VStack {
            DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date) {
                Text("Select a date")
            }
                Text("Date is \(birthDate.formatted(date: .long, time: .omitted))")
            
            VStack {
                Text(" Enter your birthday")
                    .font(.largeTitle)
                DatePicker("Enter your birthday", selection: $date)
                    .datePickerStyle(GraphicalDatePickerStyle())
                    .frame(maxHeight: 400)
            }
            
        }
    }
}

#Preview {
    DatePickerandReadValues()
}
