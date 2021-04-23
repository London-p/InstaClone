//
//  StoryVidView.swift
//  InstaClone
//
//  Created by London Petway on 4/22/21.
//

import SwiftUI
import AVKit
struct StoryVidView: View {
    let url = URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4")!
    
    var body: some View {
        VStack {
            VideoPlayer(player: AVPlayer(url: url))
        }
    }
}

struct StoryVidView_Previews: PreviewProvider {
    static var previews: some View {
        StoryVidView()
    }
}
