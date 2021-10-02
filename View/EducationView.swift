//
//  EducationView.swift
//  LottieAnimation
//
//  Created by Promal on 31/8/21.
//

import SwiftUI

struct EducationView: View  {
    @State var stories = [
        EducationDetails(id: 0, offset: 0, color1: Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), color2: Color(#colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)),image: "command.circle.fill",institute: "North Western University",subject: "BSc. in CSE",graduation: "2019",result: "CGPA: 3.89 / 4.00", animate: "codework"),
        EducationDetails(id: 1, offset: 0, color1: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), color2: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)),image: "books.vertical.fill",institute: "Gov. Sundarban College",subject: "Science",graduation: "2013",result: "GPA: 4.80 / 5.00", animate: "back-to-school"),
        EducationDetails(id: 2, offset: 0, color1: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)), color2: Color(#colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)),image: "book.circle",institute: "Khulna Zilla School",subject: "Science",graduation: "2011",result: "GPA: 5.00 / 5.00", animate: "welcome")
    ]
    @State var type = "Education"
    @State var typeAnimate = "bool.loading"
    @State var scrolled = 0

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), colorSelector()]), startPoint: .topLeading, endPoint: .bottom).ignoresSafeArea()
            LottieView(filename: typeAnimate)
                .frame(maxHeight: 200)
                .offset(y: -300)
            Text(type)
                .bold()
                .foregroundColor(Color.white)
                .font(.title)
                .offset(x: 0 , y: -180)
            VStack {
                ZStack{
                    ForEach(stories.reversed()){ story in
                        HStack{
                            ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)){
//                                Image(story.image)
//                                    .resizable()
//                                    .aspectRatio(contentMode: .fill)
                                EducationCard(eduDetails: story)
                                    .frame(width: calculateWidth(), height: UIScreen.main.bounds.height / 1.8 - CGFloat(story.id - scrolled) * 50)
                                    .cornerRadius(15)
                                VStack(alignment: .leading, spacing: 18){
                                    
                                }
                            }
                            .offset(x: story.id - scrolled <= 2 ? CGFloat(story.id - scrolled) * 30 : 60).contentShape(Rectangle())
                            Spacer(minLength: 0)
                        }
                        
                        .offset(x: story.offset)
                        .gesture(DragGesture().onChanged({(value) in
                            withAnimation{
                                if value.translation.width < 0 && story.id != stories.last!.id{
                                    stories[story.id].offset = value.translation.width
                                }
                                else{
                                    if story.id > 0 {
                                        stories[story.id - 1].offset = -(calculateWidth() + 60) + value.translation.width
                                    }
                                }
                            }
                            
                        }).onEnded({(value) in
                            withAnimation{
                                if value.translation.width < 0{
                                    if -value.translation.width > 180 && story.id != stories.last!.id{
                                        stories[story.id].offset = -(calculateWidth()+60)
                                        scrolled+=1
                                    }
                                    else{
                                        stories[story.id].offset = 0
                                    }
                                }
                                else{
                                    if story.id > 0 {
                                        if value.translation.width > 180 {
                                            stories[story.id - 1].offset = 0
                                            scrolled -= 1
                                        }
                                        else{
                                            stories[story.id - 1].offset = -(calculateWidth() + 60)
                                        }
                                    }
                                }
                            }
                        }))
                    }
                }
                .frame(height: UIScreen.main.bounds.height / 1.8 )
                .padding(.horizontal,20)
            }.offset(y: 110)
        }
        
    }
    func colorSelector() -> Color{
        switch scrolled {
        case 0:
            return stories[0].color1
        case 1:
            return stories[1].color1
        case 2:
            return stories[2].color1
        case 3:
            return stories[3].color1
        case 4:
            return stories[4].color1
        default:
            return Color(.white)
        }
    }
    
    func calculateWidth() -> CGFloat{
        let screen = UIScreen.main.bounds.width - 50
        let width = screen - (2 * 25)
        return width
    }
}

struct EducationView_Previews: PreviewProvider {
    static var previews: some View {
        EducationView()
    }
}
