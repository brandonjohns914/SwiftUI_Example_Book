//
//  UserSelectMultipleDates.swift
//  UserInterfaceControls
//
//  Created by Brandon Johns on 9/26/23.
//

import SwiftUI

struct UserSelectMultipleDates: View {
    @Environment(\.calendar) var calendar
    @State var dates: Set<DateComponents> = []
    
    var body: some View {
        VStack{
            MultiDatePicker("Select your preferred dates", selection: $dates)
            Text(summary)
        }
        .padding()
    }
    
    var summary: String {
        dates.compactMap { components in
            calendar.date(from: components)?.formatted(date: .long, time: .omitted)}.formatted()
    }
}

#Preview {
    UserSelectMultipleDates()
}
