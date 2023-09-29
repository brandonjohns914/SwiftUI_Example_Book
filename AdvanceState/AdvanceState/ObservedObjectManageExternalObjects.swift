//
//  ObservedObjectManageExternalObjects.swift
//  AdvanceState
//
//  Created by Brandon Johns on 9/29/23.
//

import SwiftUI

class UserProgress: ObservableObject {
    @Published var score = 0
}
struct InnerView: View {
    @ObservedObject var progress: UserProgress
    var body: some View {
        Button("Increase Score") {
            progress.score += 1
        }
    }
}
struct ObservedObjectManageExternalObjects: View {
    @StateObject var progess = UserProgress()
    
    var body: some View {
        VStack {
            Text("your score is \(progess.score)")
            InnerView(progress: progess)
        }
    }
}



#Preview {
    ObservedObjectManageExternalObjects()
}
