//
//  Achievement.swift
//  LottieAnimation
//
//  Created by Promal on 1/9/21.
//

import SwiftUI

struct Achievement: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)), Color(#colorLiteral(red: 0.06274510175, green: 0, blue: 0.1921568662, alpha: 1))]), startPoint: .top, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack(spacing: 0){
                LottieView(filename: "certificate2")
                    .frame(width: 300, height: 160)
                
                ScrollView{
                    Text("Research Publication")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 400,alignment: .leading)
                    ZStack {
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                            .cornerRadius(20)
                            .opacity(0.4)
                            .frame(width: 400, height: 150)
                        VStack(alignment: .leading, spacing: 5){
                            Text("⦿ A hybrid Genetic Algorithm with Chemical Reaction Optimization for Multiple Sequence Alignment")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Conference Duration: 18-20 December 2019")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Published in: IICT 2019")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                        }.padding(.horizontal,20)
                        .frame(width: 400,alignment: .leading)
                    }
                    Text("Honorable Mention")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 400,alignment: .leading)
                    ZStack {
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                            .cornerRadius(20)
                            .opacity(0.4)
                            .frame(width: 400, height: 120)
                        VStack(alignment: .leading, spacing: 5){
                            Text("⦿ 22nd ICPC 2018")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Duration: 08-10 November 2018")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Organization: ICPC")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                        }.padding(.horizontal,20)
                        .frame(width: 400,alignment: .leading)
                    }
                    Text("Certificate of Achievement")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 400,alignment: .leading)
                    ZStack {
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                            .cornerRadius(20)
                            .opacity(0.4)
                            .frame(width: 400, height: 120)
                        VStack(alignment: .leading, spacing: 5){
                            Text("⦿ LICT (Java Programming)")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Duration: 03/2019 - 07/2019")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Certified by: George Washington University, USA")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Organization: NASSCOM")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                        }.padding(.horizontal,20)
                        .frame(width: 400,alignment: .leading)
                    }
                    Text("Certificate of Competence")
                        .bold()
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                    ZStack {
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                            .cornerRadius(20)
                            .opacity(0.4)
                            .frame(width: 400, height: 140)
                        VStack(alignment: .leading, spacing: 5){
                            Text("⦿ App Monetization & App Management")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Duration: 05/2018 - 08/2018")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Certified by: ICT Division, Bangladesh.")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Organization: Digicon")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                        }.padding(.horizontal,20)
                        .frame(width: 400,alignment: .leading)
                    }
                    ZStack {
                        Rectangle()
                            .fill(Color(#colorLiteral(red: 0.1019607857, green: 0.2784313858, blue: 0.400000006, alpha: 1)))
                            .cornerRadius(20)
                            .opacity(0.4)
                            .frame(width: 400, height: 130)
                        VStack(alignment: .leading, spacing: 10){
                            Text("⦿ Mobile Application Development")
                                .font(.title3)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Duration: 05/2018 - 11/2018")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Certified by: ICT Division, Bangladesh.")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                            Text("Organization: MCC")
                                .font(.subheadline)
                                .bold()
                                .foregroundColor(Color.white)
                        }.padding(.horizontal,20)
                        .frame(width: 400,alignment: .leading)
                    }
                    
                }                
            }
            
        }
    }
}

struct Achievement_Previews: PreviewProvider {
    static var previews: some View {
        Achievement()
    }
}
