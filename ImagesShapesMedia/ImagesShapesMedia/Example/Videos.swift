//
//  Videos.swift
//  ImagesShapesMedia
//
//  Created by Brandon Johns on 9/18/23.
//

import SwiftUI
import AVKit


struct Videos: View {
    var body: some View {
        VideoPlayer(player: AVPlayer(url:  URL(string: "https://bit.ly/swswift")!)) {
            VStack {
                Text("Watermark")
                    .foregroundColor(.black)
                    .background(.white.opacity(0.7))
                Spacer()
            }
            .frame(width: 400, height: 300)
        }

       
        
    }
}

extension Videos {
//    VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "video", withExtension: "mp4")!))
//        .frame(height:400)
}

struct Videos_Previews: PreviewProvider {
    static var previews: some View {
        Videos()
    }
}
