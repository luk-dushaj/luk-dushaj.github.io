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
        VStack {}.frame(width: 20, height: 20)
        Text("Empathy Experience")
            .font(.title2)
        Header(title: "The Context")
        Text("In the Apple Academy this was a very special project we got so far.")
        Text("The constraints were no social media app along with us having to stick with a big idea/theme along with designing an app for a user.")
        Text("My groups big idea was empathy along with our user being Jazmine Middlebrooks.")
        Text("Jazmine has a history of teaching along with being in multiple groups to spread the message of mistreatment in groups of minorities.")
        Text("My group didn't want our app to be too boring, politically focused or too broad.")
        Text("We wanted to make an educational and fun app which is game oriented targeted for people who want to learn about the struggles of people of color in the professional/educational spaces.")
        HStack(spacing: 5) {
            Text("This is where")
            Text(" Empathy Experience ").fontWeight(.bold)
            Text("comes in.")
        }
        Header(title: "Separations of Concerns")
        Text("In our group now that we have an idea of what we want to accomplish.")
        Text("Before we even began our jobs, we had a consensus vote if we should prioritze learning or execution. My group chose execution so I went along with that.")
        Text("We split responsibilities, my role was the main developer along with an acquitance with a solid role in design. This was mainly if the designers need extra help along with feedback since I am the one writing most of the code architecture.")
        Text("We had to make sure the app is accessible for a huge audience while remaining fun. Now let's walk over how we did it along with how I executed this while working with two designers.")
        Header(title: "Performance under Pressure")
        Text("Since this was an ambitious project considering the amount of time we had for development which was like 7 days worth of class time. Along with making last minute design decisions this was phenomenal execution.")
        Text("I had to take this project home outside of class to make sure the job is finished.")
        Text("I wrote almost the whole codebase including haptics, UI/UX, logic along with even designing the app icon.")
        Text("The architecture I went with was MVVM since this was a game so essentially normal SwiftUI navigation is off the table (users can't go back and cheat). The ViewModel made it very easy for me to store logic and switch views programatically.")
        Text("My designers were so busy with performing the final touches on the UI that we forgot about the app icon itself. So the night before I remembered and took it upon myself.")
        Text("Icon Composer was surprisingly pretty simple to someone like me who doesn't daily drive designer tools. I learned a lot about and more importantly how to apply a icon composer file as app icon in Xcode through a godsend Reddit post.")
        Header(title: "Resolution")
        Text("After all that, we accomplished actually in fact over exceeded our original expectations.")
        Text("Our target user was very pleased with the results and ecst")
    }
}

