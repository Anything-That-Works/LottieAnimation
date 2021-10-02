//
//  CarouselCard.swift
//  LottieAnimation
//
//  Created by Promal on 31/8/21.
//

import SwiftUI

struct EmploymentCard: View {
    
    var stories: Story
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [stories.color1, stories.color2]), startPoint: .top, endPoint: .bottomTrailing)
            Rectangle()
                .fill(stories.color1)
                .opacity(0.5)
                .cornerRadius(15)
                .frame(width: 250, height: 80)
                .offset(y: 120)
            LottieView(filename: stories.animate)
                .offset(y: -130)
                .frame(height:300)
    
            VStack(alignment: .leading, spacing: 0){
                HStack{
                    Image(systemName: stories.image)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .font(.system(size: 25, weight: .ultraLight))
                    
                    Text(stories.title)
                        .bold()
                        .font(.title2)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                }.padding(.bottom,30)
                VStack(spacing: 0){
                    Text(stories.company)
                        .font(.title3)
                        .bold()
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .padding(.top, 10)
                        .padding(.horizontal, 40)
                    Text("Duration: \(stories.duration)")
                        .font(.subheadline)
                        .bold()
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .padding(.top, 10)
                }
            }.offset(y: 80)
        }
    }
}

struct EmploymentCard_Previews: PreviewProvider {
    static var previews: some View {
        EmploymentCard(stories: Story(id: 0, offset: 0, color1: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), color2: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)),image: "applelogo",title: "iOS Developer", company: "BITI",duration: "05/2019 - 06/2020", animate: "developer"))
    }
}
