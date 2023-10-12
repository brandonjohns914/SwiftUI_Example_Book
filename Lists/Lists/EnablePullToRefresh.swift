//
//  EnablePullToRefresh.swift
//  Lists
//
//  Created by Brandon Johns on 9/30/23.
//

import SwiftUI

struct NewsItem: Decodable, Identifiable {
    let id: Int
    let title: String
    let strap: String
    
}


struct EnablePullToRefresh: View {
    @State private var news = [NewsItem(id: 0, title: "Want the latest news?", strap: "Pull down to refressh")]
    
    
    var body: some View {
        NavigationStack {
            List(news) { item in
                VStack (alignment: .leading) {
                    Text(item.title)
                        .font(.headline)
                    Text(item.strap)
                        .foregroundColor(.secondary)
                }
            }
            .refreshable {
                do {
                    
                    let url = URL(string: "https://www.hackingwithswift.com/samples/news-1.json")!
                    let (data, _) = try await URLSession.shared.data(from: url)
                    news = try JSONDecoder().decode([NewsItem].self, from: data)
                    
                } catch {
                    news = [] 
                }
            }
        }
    }
}

#Preview {
    EnablePullToRefresh()
}
