//
//  TimerWithSwiftUI.swift
//  AdvanceState
//
//  Created by Brandon Johns on 9/29/23.
//

import SwiftUI

struct TimerWithSwiftUI: View {
    @State var timeRemaining = 10
    @State var currentDate = Date.now
    let timer = Timer.publish(every: 1, on: .main , in: .common).autoconnect()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(currentDate)")
                .onReceive(timer) { input in
                    currentDate = input
                }
            
            Text("\(timeRemaining)")
                .onReceive(timer){ _ in
                    if timeRemaining > 0 {
                        timeRemaining -= 1
                    }
                }
        }
    
    }
}

#Preview {
    TimerWithSwiftUI()
}
