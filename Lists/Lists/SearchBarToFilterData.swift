//
//  SearchBarToFilterData.swift
//  Lists
//
//  Created by Brandon Johns on 9/30/23.
//

import SwiftUI

struct Message: Identifiable, Codable {
    let id: Int
    var user: String
    var text: String
}

enum SearchScope: String, CaseIterable {
    case inbox, favorites
}

struct SearchBarToFilterData: View {
    @State private var searchText = ""
    
    let names = ["Ellie", "Henry", "Maggie", "Cooper"]
    
    @State private var messages = [Message]()
    
    @State private var searchScope = SearchScope.inbox
    
    var body: some View {
        NavigationStack {
            
//            List {
//                ForEach(searchResults, id: \.self) { name in
//                    NavigationLink {
//                        Text(name)
//                    } label: {
//                        Text(name)
//                    }
//                }
//                
//            }
//            .navigationTitle("Contacts")
            
            
            List{
                ForEach(filteredMesssages) { message in
                    VStack(alignment: .leading) {
                        
                        Text(message.user)
                            .font(.headline)
                        
                        Text(message.text)
                    }
                }
            }
            .navigationTitle("Messages")
            
           
        }
        .searchable(text: $searchText)
        .searchScopes($searchScope) {
            ForEach(SearchScope.allCases, id: \.self){ scope in
                Text(scope.rawValue.capitalized)
            }
        }
        .onAppear(perform: runSearch)
        .onSubmit(of: .search, runSearch)
        .onChange(of: searchScope) { _ in runSearch()
            
        }
      
    }
    var filteredMesssages: [Message] {
        if searchText.isEmpty {
            return messages
        } else {
            return messages.filter {$0.text.localizedCaseInsensitiveContains(searchText)}
        }
    }
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText)}
        }
    }
    
    func runSearch() {
        Task {
            guard let url = URL(string: "https://hws.dev/\(searchScope.rawValue).json") else { return }
            
            let (data, _) = try await URLSession.shared.data(from: url)
            messages = try JSONDecoder().decode([Message].self, from: data)
        }
    }

}

#Preview {
    SearchBarToFilterData()
}
