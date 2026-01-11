import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Body {
            content
            HStack {
                Text {
                    "Created in Swift with "
                    Link("Ignite", target: URL(static: "https://github.com/twostraws/Ignite"))
                }
                Spacer()
                Text(markdown: "Open Source on [GitHub](https://github.com/luk-dushaj/luk-dushaj.github.io)")
            }
            .padding(.vertical)
            .horizontalAlignment(.center)
            .margin(.top, .xLarge)
        }
    }
}
