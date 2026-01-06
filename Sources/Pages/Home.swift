import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        Text("Luk's Portfolio")
            .font(.title1)
        
        List {
            Link("About Me", target: AboutMe())
            Link("Contact", target: Contact())
        }
    }
}
