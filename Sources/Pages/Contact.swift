//
//  File.swift
//  IgniteStarter
//
//  Created by Luk on 1/6/26.
//

import Foundation
import Ignite

struct Contact: StaticPage {
    var title = "Contact"
    var body: some HTML {
        HStack {
            Text("Contact Information")
                .font(.title1)
            Spacer()
        }
        List {
            Link("Email", target: "mailto:dushajluk@gmail.com")
                .font(.title3)
            Link("LinkedIn", target: "https://www.linkedin.com/in/luk-dushaj-66a8b7329/")
                .font(.title3)
        }
        .listStyle(.plain)
    }
}
