import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"
    let foldUrl = "https://testflight.apple.com/join/vpQVVPZw"
    let empathyUrl = "https://testflight.apple.com/join/rpdQVUTe"
    let madcapUrl = "https://github.com/luk-dushaj/MADCAP"
    let safeSpaceUrl = "https://github.com/luk-dushaj/SafeSpace"
    
    var body: some HTML {
        PageHeader(title, altTitle: "Luk's Portfolio")
        VStack {}.frame(width: 20, height: 20)
        
        CollapsableSection(text: Text("7Fold").font(.title2), startsCollapsed: true) {
            CollapsableSection(text: Text("Initial Hurdles").font(.title3)) {
                Text("For this project we assembled a very talented group of individuals.")
                Text("Two designers, two coders and a project manager.")
                Text("We had to develop a fully working game that is able to be completed in 4 weeks.")
                Text("We all settled on the genre horror and we all had amazing ideas to process. Eventually what was chosen was a platformer with horror elements.")
                Text("Now for the actual process of what really went on.")
            }
            CollapsableSection(text: Text("Development Journey").font(.title3)) {
                Text("The first 2 weeks I had to spend a lot of time playing around with SpriteKit.")
                Text("I also developed a joystick within it which I was very proud of since the logic didn't allow to escape the outer ring and directly mapped to the characters movement, direction and speed.")
                Text("Then after it reality hit since I have to actually develop a game now.")
                Text("I implemented cross device scaling (iPhone & iPads), animations which there were a lot of (talented designers❤️), physics (for sure my weakest), and a lot of other things.")
                Text("Along with after school nights developing with my other coder and improvising ideas on the fly like menu music and in game soundtracks/bites.")
            }
            CollapsableSection(text: Text("Results").font(.title3)) {
                Text("After all that work the game was essentially done.")
                Text("I am very proud of what my group accomplished within those 4 weeks since to make a actual polished version would take an indie team like a couple months.")
            }
            VStack(alignment: .center, spacing: 10) {
                Text("App Demonstration")
                Video("/videos/7Fold.mp4")
                    .style(.width, "50%")
                    .style(.maxWidth, "50%")
                    .style(.height, "auto")
                Link("TestFlight", target: foldUrl)
            }
            .font(.title4)
        }
        
        CollapsableSection(text: Text("Empathy Experience").font(.title2), startsCollapsed: true) {
            CollapsableSection(text: Text("The Context").font(.title3)) {
                Text("In Apple Academy, this was a very special project we got so far.")
                Text("The constraints were no social media app along with us having to stick with a big idea/theme along with designing an app for a user.")
                Text("My groups big idea was empathy along with our user being Jazmine Middlebrooks.")
                Text("Jazmine has a history of teaching along with being in multiple groups to spread the message of mistreatment in groups of minorities.")
                Text("My group didn't want our app to be too boring, politically focused or too broad.")
                Text("We wanted to make an educational and fun app which is game oriented targeted for people who want to learn about the struggles of people of color in the professional/educational spaces.")
                Text(markdown: "This is where **Empathy Experience** comes in.")
            }
            CollapsableSection(text: Text("Separations of Concerns").font(.title3)) {
                Text("In our group now that we have an idea of what we want to accomplish.")
                Text("Before we even began our jobs, we had a consensus vote if we should prioritze learning or execution. My group chose execution so I went along with that.")
                Text("We split responsibilities, my role was the main developer along with an acquitance with a solid role in design. This was mainly if the designers need extra help along with feedback since I am the one writing most of the code architecture.")
                Text("We had to make sure the app is accessible for a huge audience while remaining fun. Now let's walk over how we did it along with how I executed this while working with two designers.")
            }
            CollapsableSection(text: Text("Performance under Pressure").font(.title3)) {
                Text("Since this was an ambitious project considering the amount of time we had for development which was like 7 days worth of class time. Along with making last minute design decisions this was phenomenal execution.")
                Text("I had to take this project home outside of class to make sure the job is finished.")
                Text("The architecture I went with was MVVM since this was a game so essentially normal SwiftUI navigation is off the table (users can't go back and cheat). The ViewModel made it very easy for me to store logic and switch views programatically.")
                Text("My designers were so busy with performing the final touches on the UI that we forgot about the app icon itself. So the night before, I remembered and took it upon myself.")
                Text("Icon Composer was surprisingly pretty simple to someone like me who doesn't daily drive designer tools. I learned a lot about and more importantly how to apply a icon composer file as app icon in Xcode through a godsend Reddit post.")
            }
            CollapsableSection(text: Text("Resolution").font(.title3)) {
                Text("After all that, we accomplished actually in fact over exceeded our original expectations.")
                Text("Our target user was very pleased with the results and impressed considering the circumstances.")
            }
            VStack(alignment: .center, spacing: 10) {
                Text("App Demonstration")
                Video("/videos/empathy-experience.mp4")
                    .style(.width, "50%")
                    .style(.maxWidth, "50%")
                    .style(.height, "auto")
                Link("TestFlight", target: empathyUrl)
            }
            .font(.title4)
        }
        
        CollapsableSection(text: Text("MADCAP").font(.title2), startsCollapsed: true) {
            CollapsableSection(text: Text("The Story").font(.title3)) {
                Text("This was a solo project that everyone was assigned to do.")
                Text("We had to create a iOS app prototype for a chosen coffee shop.")
                Text("If you are a Detroit native you might've heard of MADCAP.")
                Text("It is a minimalist coffee shop that has been around for awhile, a lot of black and white colors along with vibrant painting and plants in the shop to stand out.")
                Text("It was my job to create a very simple CRUD app to take in user input, calculate cost and display the order out in the end.")
            }
            CollapsableSection(text: Text("Execution").font(.title3)) {
                Text("I learned a lot during this process like generics to create a reusable Picker across types. Along with UI design especially in Sketch.")
                Text("Also leaned very hard on Apple's native components since that is minimalist and familiar by design.")
                Text("Even added a tip amount along with error handling if a user doesn't input a name for the order along with handling if a user doesn't specify any notes for the order.")
                Text("This was a very good learning experience and I would highly recommend it to anyone looking to learn SwiftUI or iOS development.")
                Text(markdown: "The app is open source on [GitHub](\(madcapUrl))")
            }
        }
        CollapsableSection(text: Text("SafeSpace").font(.title2), startsCollapsed: true) {
            CollapsableSection(text: Text("Humble Beginnings").font(.title3)) {
                Text("This was my first ever group project in the Apple Developer Academy.")
                Text("We were met with good constraints of it has to work on device so no networking along with only 3 screens.")
                Text("We also had a big idea of......")
            }
            CollapsableSection(text: Text("Resolution of the process").font(.title3)) {
                Text("Besides coding, I learned a lot about communication, collaborating with teammates and time management.")
                Text("This was a great first project that challenged my patience along with my ability to learn from others.")
                Text(markdown: "The app is open source on [GitHub](\(safeSpaceUrl))")
            }
        }
    }
}

