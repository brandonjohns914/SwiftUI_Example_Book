//
//  EnvironmentObjectShareDataBetweenViews.swift
//  AdvanceState
//
//  Created by Brandon Johns on 9/29/23.
//

import SwiftUI

class GameSettings: ObservableObject {
    @Published var score = 0
}

struct ScoreView: View {
    @EnvironmentObject var settings: GameSettings
    
    var body: some View {
        Text("Score: \(settings.score)")
    }
}

struct EnvironmentObjectShareDataBetweenViews: View {
    @StateObject var settings = GameSettings()
    
    var body: some View {
        NavigationStack {
            VStack {
                Button("Increase Score"){
                    settings.score += 1
                }
                NavigationLink{
                    ScoreView()
                } label: {
                    Text("Show Detail View")
                }
            }
            .frame(height: 200)
        }
        .environmentObject(settings)
    }
}

#Preview {
    EnvironmentObjectShareDataBetweenViews()
}
