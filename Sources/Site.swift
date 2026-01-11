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

/*
 HStack {
     Link("About", target: About())
     Link("Contact", target: Contact())
 }
 .font(.title3)
 */

struct PageItem {
    let name: String
    let content: any StaticPage
}

struct NavList: HTML {
    let currentPage: String
    var pages: [PageItem] = [
        PageItem(name: "Home", content: Home()),
        PageItem(name: "About", content: About()),
        PageItem(name: "Contact", content: Contact())
    ]
    var remainingPageList: [PageItem] {
        pages.filter {
            $0.name != currentPage
        }
    }
    var body: some HTML {
        HStack {
            ForEach(remainingPageList) { page in
                Link(page.name, target: page.content)
            }
        }
        .font(.title3)
    }
}

struct PageHeader: HTML {
    let title: String
    var altTitle = ""
    
    init(_ title: String, altTitle: String = "") {
        self.title = title
        self.altTitle = altTitle
    }
    
    var body: some HTML {
        HStack {
            Text(altTitle == "" ? title : altTitle)
                .font(.title1)
            Spacer()
            NavList(currentPage: title)
        }
    }
}

struct Header: HTML {
    let title: String
    let spacing: Int = 10
    let fontType: Font.Style = .title3
    
    init(_ title: String) {
        self.title = title
    }
    
    var body: some HTML {
        VStack {}.frame(width: spacing, height: spacing)
        Text(title)
            .font(fontType)
        VStack {}.frame(width: spacing, height: spacing)
    }
}

struct Website: Site {
    var name = "Portfolio"
    var url = URL(static: "https://luk-dushaj.github.io")
    var builtInIconsEnabled = true
    
    var author = "Luk Dushaj"
    
    var homePage = Home()
    var layout = MainLayout()
    
    var staticPages: [any StaticPage] {
        Home()
        About()
        Contact()
    }
}
