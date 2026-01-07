//
//  File.swift
//  IgniteStarter
//
//  Created by Luk on 1/6/26.
//

import Foundation
import Ignite

struct AboutMe: StaticPage {
    var title = "About Me"
    var body: some HTML {
        Text("My name is Luk Dushaj, I specialize in iOS Development.")
            .font(.title3)
        VStack {}.frame(width: 10, height: 10)
        VStack(alignment: .leading,spacing: 10) {
            Text("In general, I love the overall history of Apple platforms along with how UI/UX has changed over the years.")
            Text("As you can already tell I am a huge tech nerd, I can talk about a variety of subjects like hardware, software and operating systems.")
            Text("Another hobby I love besides tech is hitting the gym.")
            Text("Just like how I believe you have to optimize the software for the hardware. Your body can directly impact your mentality in a good or bad way at least for myself.")
            Text("Anime is a must for me, my favorite genres are specifically seinen, anti-hero and psychological since those always have some of the best character developments.")
        }
    }
}
