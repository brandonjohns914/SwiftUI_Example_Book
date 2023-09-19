//
//  ViewsInloopUsingForEach.swift
//  ViewLayout
//
//  Created by Brandon Johns on 9/19/23.
//

import SwiftUI

struct IdentifiableGameResult: Identifiable {
    var id = UUID()
    var score: Int
}
struct SimpleGameResult {
    let id = UUID()
    let score: Int
}

struct ViewsInloopUsingForEach: View {
    
    let colors: [Color] = [.red, .green, .blue]
    
    let results = [
        SimpleGameResult(score: 8),
        SimpleGameResult(score: 5),
        SimpleGameResult(score: 10)
    ]
    
    let resultsIdentifiable = [
        IdentifiableGameResult(score: 8),
        IdentifiableGameResult(score: 5),
        IdentifiableGameResult(score: 10)
    ]
    var body: some View {
        VStack(alignment: .leading) {
            ForEach((1...10).reversed(), id: \.self) {
                Text("\($0)...")
            }
            Text("Ready or not, here I come!")
            
            ForEach(colors, id: \.self) { color in
                Text(color.description.capitalized)
                    .padding()
                    .background(color)
                
            }
            ForEach(results, id: \.id) { result in
                Text("Result: \(result.score)")
            }
            
            ForEach(resultsIdentifiable) { result in
                Text("Result: \(result.score)")
            }
        }
    }
}

struct ViewsInloopUsingForEach_Previews: PreviewProvider {
    static var previews: some View {
        ViewsInloopUsingForEach()
    }
}
