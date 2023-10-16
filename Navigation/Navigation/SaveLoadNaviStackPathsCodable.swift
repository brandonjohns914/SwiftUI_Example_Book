//
//  SaveLoadNaviStackPathsCodable.swift
//  Navigation
//
//  Created by Brandon Johns on 10/16/23.
//

import SwiftUI

class PathStore: ObservableObject {
    @Published var path = NavigationPath() {
        didSet {
            save()
        }
    }

    private let savePath = URL.documentsDirectory.appending(path: "SavedPathStore")

    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode(NavigationPath.CodableRepresentation.self, from: data) {
                path = NavigationPath(decoded)
                return
            }
        }
    }

    func save() {
        guard let representation = path.codable else { return }

        do {
            let data = try JSONEncoder().encode(representation)
            try data.write(to: savePath)
        } catch {
            print("Failed to save navigation data")
        }
    }
}

    struct DetailView1 : View {
        var id: Int
        
        var body: some View {
            VStack {
                Text("View \(id)")
                    .font(.largeTitle)
                NavigationLink("Jump to random", value: Int.random(in: 1...100))
            }
        }
    }
    
    struct SaveLoadNaviStackPathsCodable: View {
        @StateObject private var pathStore = PathStore()
        
        var body: some View {
            NavigationStack(path: $pathStore.path) {
                DetailView1(id: 0)
                    .navigationDestination(for: Int.self, destination: DetailView1.init)
                    .navigationTitle("Navigation")
            }
        }
    }
    
    #Preview {
        SaveLoadNaviStackPathsCodable()
    }
