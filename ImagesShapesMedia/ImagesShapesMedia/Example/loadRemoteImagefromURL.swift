//
//  loadRemoteImagefromURL.swift
//  ImagesShapesMedia
//
//  Created by Brandon Johns on 9/18/23.
//

import SwiftUI

struct loadRemoteImagefromURL: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://hws.dev/paul.jpg")) {
            phase in
            switch phase {
            case .failure:
                Image(systemName: "photo")
                    .font(.largeTitle)
            case .success(let image):
                image
                    .resizable()
            default:
                ProgressView()
            }
        }
        .frame(width: 256, height: 256)
        .clipShape(RoundedRectangle(cornerRadius: 25))
    }
}

struct loadRemoteImagefromURL_Previews: PreviewProvider {
    static var previews: some View {
        loadRemoteImagefromURL()
    }
}
