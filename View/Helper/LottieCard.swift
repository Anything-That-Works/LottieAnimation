//
//  LottieCard.swift
//  LottieAnimation
//
//  Created by Promal on 27/8/21.
//

import SwiftUI

struct LottieCard: View {
    @State var id: Int? = 0
    var title = "Hello"
    var icon = "faceid"
    var animate = "data"
    var color1 = Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1))
    var color2 = Color(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
    
    
    @State var workStories = [
        Story(id: 0, offset: 0, color1: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), color2: Color(#colorLiteral(red: 0.3098039329, green: 0.2039215714, blue: 0.03921568766, alpha: 1)),image: "person.crop.circle",title: "Data Entry & CSR", company: "BackSpace Global",duration: "06/2016 - 08/2019", animate: "data"),
        Story(id: 1, offset: 0, color1: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), color2: Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)),image: "applelogo",title: "iOS Development", company: "BITI",duration: "09/2019 - 03/2020", animate: "developer"),
        Story(id: 2, offset: 0, color1: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), color2: Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1)),image: "gearshape.2",title: "Tech Support", company: "Apogee",duration: "05/2020 - 12/2020", animate: "support"),
        Story(id: 3, offset: 0, color1: Color(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)), color2: Color(#colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1)),image: "network",title: "Network Support", company: "Attrabit",duration: "09/2020 - 12/2020", animate: "networking"),
        Story(id: 4, offset: 0, color1: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), color2: Color(#colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)),image: "house.circle",title: "Freelancer", company: "Upwork",duration: "02/2021 - Present", animate: "freelancing")
    ]
    var body: some View{
            ZStack{
                NavigationLink(destination: EmploymentView(stories: workStories,type: "Employment History",typeAnimate: "working-man"), tag: 1, selection: $id) {
                    EmptyView()
                }
                NavigationLink(destination: EducationView(type: "Education", typeAnimate: "bool.loading"), tag: 2, selection: $id) {
                    EmptyView()
                }
                NavigationLink(destination: Achievement(), tag: 3, selection: $id) {
                    EmptyView()
                }
                NavigationLink(destination: ContactView(), tag: 4, selection: $id) {
                    EmptyView()
                }
                RoundedRectangle(cornerRadius: 30)
                    .fill(LinearGradient(gradient: Gradient(colors: [color1, color2]), startPoint: .top, endPoint: .bottomTrailing))
                    .frame(width: 380, height: 250)
                    .shadow(color: Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)), radius: 25, x: -10, y: 10)
                ZStack{
                    Circle().fill(color1.opacity(0.3))
                        .frame(width: 50)
                    Image(systemName: icon)
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                }
                .offset(x: -150, y: 85)
                .onTapGesture {
                    if (self.title == "Employment"){
                        self.id = 1
                    } else if (self.title == "Education"){
                        self.id = 2
                    } else if (self.title == "Achievement"){
                        self.id = 3
                    } else if (self.title == "Contact"){
                        self.id = 4
                    }
                }
                
                Text(title)
                    .foregroundColor(.white)
                    .bold()
                    .offset(x: -120, y: -90)
                    .font(.title3)
                LottieView(filename: animate)
                    .frame(width: 250, height: 200)
            }
        }
    }


struct LottieCard_Previews: PreviewProvider {
    static var previews: some View{
        LottieCard()
    }
}
