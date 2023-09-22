//
//  StructureUsingForegroundStyles.swift
//  ViewLayout
//
//  Created by Brandon Johns on 9/22/23.
//

import SwiftUI

struct StructureUsingForegroundStyles: View {
    var body: some View {
        VStack(alignment: .center, spacing: 15) {
            HStack {
                Image(systemName: "clock.fill")
                Text("Set the time")
            }
            .font(.largeTitle.bold())
            .foregroundStyle(.quaternary)
            
            HStack {
                Image(systemName: "clock.fill")
                Text("Set the time")
            }
            .font(.largeTitle.bold())
            .foregroundStyle(
                .linearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottom)
                
                )
            
            
        }
    }
}

#Preview {
    StructureUsingForegroundStyles()
}
