import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Body {
            content
            HStack {
                IgniteFooter()
                Spacer()
                Text(markdown: "Open Source on [GitHub](https://github.com/luk-dushaj/luk-dushaj.github.io)")
            }
        }
    }
}
