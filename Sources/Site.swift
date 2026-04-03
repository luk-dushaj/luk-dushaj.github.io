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

// Kept complaining about any "Type" not conforming to "Type" so generics it is
public struct ToggleElement: Action {
    let contentId: String
    let arrowId: String

    public func compile() -> String {
        "flipArrow('\(contentId)', '\(arrowId)')"
    }
}

struct CollapsableSection<Text: HTML, Content: HTML>: HTML {
    let text: Text
    let id = UUID().uuidString
    let arrowId = UUID().uuidString
    let alignment: HorizontalAlignment
    let spacing: Int
    let startsCollapsed: Bool
    
    @HTMLBuilder let content: Content
    
    init(text: Text, alignment: HorizontalAlignment = .leading, spacing: Int = 10, startsCollapsed: Bool = true, content: @escaping () -> Content) {
        self.text = text
        self.alignment = alignment
        self.spacing = spacing
        self.startsCollapsed = startsCollapsed
        self.content = content()
    }

    var body: some HTML {
        VStack(alignment: alignment, spacing: spacing) {
            Script(code: """
            function flipArrow(contentId, arrowId) {        
                const content = document.getElementById(contentId);
                const arrow = document.getElementById(arrowId);

                const isHidden = content.classList.contains('d-none');

                if (isHidden) {
                    // OPEN
                    content.classList.remove('d-none');
                    arrow.style.transform = "rotate(90deg)";
                } else {
                    // CLOSE
                    content.classList.add('d-none');
                    arrow.style.transform = "rotate(0deg)";
                }
            }
            """)
            HStack(spacing: 10) {
                text
                Image("/images/arrow_forward.svg", description: "arrow")
                    .id(arrowId)
            }
            .onClick(actions: {
                ToggleElement(contentId: id, arrowId: arrowId)
            })
            
            content
                .id(id)

            if startsCollapsed {
                Script(code: "document.getElementById('\(id)').classList.add('d-none');")
            } else {
                Script(code: "document.getElementById('\(arrowId)').style.transform = 'rotate(90deg)';")
            }
        }
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
        let pages = NavList(currentPage: "Home").pages
        for page in pages {
            page.content
        }
    }
}
