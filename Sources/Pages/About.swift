//
//  File.swift
//  IgniteStarter
//
//  Created by Luk on 1/6/26.
//

import Foundation
import Ignite

struct About: StaticPage {
    var title = "About"
    let cs50 = "https://certificates.cs50.io/2a8ce4aa-9e16-49c0-8af1-ee1c3c0e4d80.pdf"
    let cyber = "https://msu.credential.getsmarter.com/8b439b18-e53d-49f7-8146-b5e9b8cf690b"
    var body: some HTML {
        PageHeader(title)
        VStack {}.frame(width: 10, height: 10)
        VStack(alignment: .leading, spacing: 10) {
            Text("My name is Luk Dushaj, a 22 year old male.")
            Text("I have multiple levels of software knowledge.")
            Text("For the past few years out of highschool this is what I have been doing:")
            List {
                Text(markdown: "Completed my **Software Engineering Certficate** *(Still waiting for certificate email)* from Oakland Community College that also specializes in Mobile Development.")
                Text(markdown: "Did **[Harvard CS50](\(cs50))** and successfully passed the course.")
                Text(markdown: "Also achieved a **[Cybersecurity Boot Camp Certificate](\(cyber))** from Michigan State University.")
                Text("I am current attending the Apple Developer Academy, so the final iOS Developer Certificate is expected around late May to around June.")
            }
            .listMarkerStyle(.unordered)
            // New section above
            Text("In general, I love the overall history of Apple platforms along with how UI/UX has changed over the years.")
            Text("With my extensive knowledge in software, I always try to make sure users are secured, safe and feel comfortable in my applications.")
            Text(markdown: "On my spare time, I love learning stuff like UNIX, hardware, networking *(definitely my weakest)* and more.")
        }
    }
}
