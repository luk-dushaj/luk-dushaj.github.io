import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        HStack {
            Text("Luk's Portfolio")
                .font(.title1)
            Spacer()
            HStack {
                Link("About Me", target: AboutMe())
                Link("Contact", target: Contact())
            }
        }
    }
}
