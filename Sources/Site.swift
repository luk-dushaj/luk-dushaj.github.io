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

struct NavList: HTML {
    let currentPage: String
    var pageList: [String: any StaticPage] = [
        "Home": Home(),
        "About": About(),
        "Contact": Contact()
    ]
    var remainingPageList: [String: any StaticPage] {
        pageList.filter {
            $0.key != currentPage
        }
    }
    var body: some HTML {
        HStack {
            ForEach(remainingPageList) { key, value in
                Link(key, target: value)
            }
        }
        .font(.title3)
    }
}

struct PageHeader: HTML {
    let title: String
    
    init(_ title: String) {
        self.title = title
    }
    
    var body: some HTML {
        HStack {
            Text(title)
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
    var url = URL(static: "https://www.example.com")
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
