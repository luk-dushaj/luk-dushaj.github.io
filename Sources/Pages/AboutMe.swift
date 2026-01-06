//
//  File.swift
//  IgniteStarter
//
//  Created by Luk on 1/6/26.
//

import Foundation
import Ignite

struct AboutMe: StaticPage {
    var title = "about"
    var body: some HTML {
        Text("My name is Luk Dushaj, I specialize in iOS Development.")
            .font(.title1)
        Text("In general, I love the overall history of Apple platforms along with how UI/UX has changed over the years.")
        Text("As you can already tell I am a huge tech nerd, I can talk about a variety of subjects like hardware, software and operating systems.")
    }
}
