//
//  ColorsTransparencySFsymbols.swift
//  ImagesShapesMedia
//
//  Created by Brandon Johns on 9/18/23.
//

import SwiftUI

struct ColorsTransparencySFsymbols: View {
    @State private var value = 0.0
    
    var body: some View {
        List {
            VStack(alignment: .center, spacing: 25) {
                Image(systemName: "theatermasks")
                    .symbolRenderingMode(.hierarchical)
                    .font(.system(size: 144))
                
                Image(systemName: "theatermasks")
                    .symbolRenderingMode(.hierarchical)
                    .foregroundColor(.blue)
                    .font(.system(size: 144))
                
                Image(systemName: "shareplay")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.blue, .black)
                    .font(.system(size: 144))
                
                Image(systemName: "person.3.sequence.fill")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(.blue, .green, .red)
                    .font(.system(size: 144))
                
             Image(systemName: "person.3.sequence.fill")
                    .symbolRenderingMode(.palette)
                    .foregroundStyle(
                    
                        .linearGradient(colors: [.red, .black], startPoint: .top, endPoint: .bottomTrailing),
                        .linearGradient(colors: [.green, .black], startPoint: .top, endPoint: .bottomTrailing),
                        .linearGradient(colors: [.blue,  .black], startPoint: .top, endPoint: .bottomTrailing)
                    
                    ).font(.system(size: 144))
                
                VStack {
                    HStack {
                        Image(systemName: "aqi.low", variableValue: value)
                        Image(systemName: "wifi",variableValue: value)
                        Image(systemName: "chart.bar.fill", variableValue: value)
                        Image(systemName: "waveform", variableValue: value)
                    }
                    Slider(value: $value)
                }
                .font(.system(size: 72))
                .foregroundColor(.blue)
                .padding()
            }
        }
    }
}

struct ColorsTransparencySFsymbols_Previews: PreviewProvider {
    static var previews: some View {
        ColorsTransparencySFsymbols()
    }
}
