//
//  Carousel Slider.swift
//  LottieAnimation
//
//  Created by Promal on 28/8/21.
//

import SwiftUI

struct EmploymentView: View {
    @State var stories = [
        Story(id: 0, offset: 0, color1: Color(#colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)), color2: Color(#colorLiteral(red: 0.1921568662, green: 0.007843137719, blue: 0.09019608051, alpha: 1)),image: "person.crop.circle",title: "Demo Title", company: "Demo Company",duration: "MM/YYYY - MM/YYYY", animate: "data")
    ]
    @State var type = "Employment History"
    @State var typeAnimate = "working-man"
    @State var scrolled = 0

    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)), colorSelector()]), startPoint: .topLeading, endPoint: .bottom).ignoresSafeArea()
            LottieView(filename: typeAnimate)
                .frame(maxHeight: 300)
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
                                EmploymentCard(stories: story)
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

struct EmploymentView_Previews: PreviewProvider {
    static var previews: some View {
        EmploymentView()
    }
}

