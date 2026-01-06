//
//  File.swift
//  IgniteStarter
//
//  Created by Luk on 1/6/26.
//

import Foundation
import Ignite

struct Contact: StaticPage {
    var title = "contact"
    var body: some HTML {
        Text("You can always contact me from these:")
            .font(.title1)
        List {
            Link("Email", target: "mailto:dushajluk@gmail.com")
            Link("LinkedIn", target: "https://www.linkedin.com/in/luk-dushaj-66a8b7329/")
        }
        .listStyle(.group)
    }
}
