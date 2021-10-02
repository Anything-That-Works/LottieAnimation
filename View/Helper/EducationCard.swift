//
//  EducationCard.swift
//  LottieAnimation
//
//  Created by Promal on 31/8/21.
//

import SwiftUI

struct EducationCard: View {
    var eduDetails: EducationDetails
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [eduDetails.color1, eduDetails.color2]), startPoint: .top, endPoint: .bottomTrailing)
            Rectangle()
                .fill(eduDetails.color1)
                .opacity(0.5)
                .cornerRadius(15)
                .frame(width: 250, height: 100)
                .offset(y: 130)
            LottieView(filename: eduDetails.animate)
                .offset(y: -110)
                .frame(height:300)
    
            VStack(alignment: .center, spacing: 0){
                HStack{
                    Image(systemName: eduDetails.image)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .font(.system(size: 25, weight: .ultraLight))
                        
                    
                    Text(eduDetails.institute)
                        .bold()
                        .font(.title3)
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                }.padding(.bottom,15)
                VStack(alignment:.center,spacing: 0){
                    Text(eduDetails.subject)
                        .font(.title3)
                        .bold()
                        .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                        .padding(.top, 10)
                        .padding(.horizontal, 40)
                    VStack(alignment:.leading, spacing: 0 ){
                        Text("Graduation: \(eduDetails.graduation)")
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .padding(.top, 10)
                        Text(eduDetails.result)
                            .font(.subheadline)
                            .bold()
                            .foregroundColor(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)))
                            .padding(.top, 10)
                    }
                }
                .frame(width:400)
                
            }.offset(y: 100)
            .frame(width: 400)
        }
    }
}

struct EducationCard_Previews: PreviewProvider {
    static var previews: some View {
        EducationCard(eduDetails: EducationDetails(id: 0, offset: 0, color1: Color(#colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)), color2: Color(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1)),image: "books.vertical.fill",institute: "North Western University",subject: "BSc. in CSE",graduation: "2019",result: "CGPA: 3.89", animate: "codework"))
    }
}
