import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = Website()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct Header: HTML {
    let title: String
    let spacing: Int = 10
    let fontType: Font.Style = .title3
    var body: some HTML {
        VStack {}.frame(width: spacing, height: spacing)
        Text(title)
            .font(fontType)
        VStack {}.frame(width: spacing, height: spacing)
    }
}

struct Website: Site {
    var name = "Portfolio"
    var url = URL(static: "https://www.example.com")
    var builtInIconsEnabled = true

    var author = "Luk Dushaj"

    var homePage = Home()
    var layout = MainLayout()
    
    var staticPages: [any StaticPage] {
        AboutMe()
        Contact()
    }
}
