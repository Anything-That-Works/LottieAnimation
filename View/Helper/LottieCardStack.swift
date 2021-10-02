//
//  LottieCardStack.swift
//  LottieAnimation
//
//  Created by Promal on 31/8/21.
//

import SwiftUI

struct LottieCardStack: View {
    @State var show1 = false
    @State var show2 = false
    @State var show3 = false
    var body: some View {
        ZStack{
            LottieCard(title: "Contact", icon: "qrcode.viewfinder", animate: "contact-us", color1: Color(#colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)), color2: Color(#colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1)))
                .offset(y: show1 ? 60 : 40)
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.show1.toggle()
                    self.show2.toggle()
                    self.show3.toggle()
                }
            
            LottieCard(title: "Achievement", icon: "qrcode.viewfinder", animate: "trophy", color1: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), color2: Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)))
                .offset(x: show1 ? -260 : 0)
                .offset(y: show1 ? -40 : 20)
                .rotationEffect(Angle(degrees: show1 ? 100 : 0))
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.show1.toggle()
                    if (self.show1 == true){
                        self.show2 = true
                        self.show3 = true
                    }
                }
            
            LottieCard(title: "Education", icon: "qrcode.viewfinder", animate: "student", color1: Color(#colorLiteral(red: 0.1294117719, green: 0.2156862766, blue: 0.06666667014, alpha: 1)), color2: Color(#colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)))
                .offset(x: show2 ? -300 : 0)
                .rotationEffect(Angle(degrees: show2 ? 120 : 0))
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.show2.toggle()
                    if self.show2 == false {
                        self.show1 = false
                    }
                    else {
                        self.show3 = true
                    }
                }
            
            LottieCard(title: "Employment", icon: "qrcode.viewfinder", animate: "team-communication", color1: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), color2: Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                .offset(x: show3 ? -320 : 0, y: show3 ? 55: -20)
                .rotationEffect(Angle(degrees: show3 ? 140 : 0))
                .animation(.spring(response: 0.6, dampingFraction: 0.6, blendDuration: 0))
                .onTapGesture {
                    self.show3.toggle()
                    if (self.show3 == false){
                        self.show1 = false
                        self.show2 = false
                    }
                }
        }.frame(height: 300)
    }
}

struct LottieCardStack_Previews: PreviewProvider {
    static var previews: some View {
        LottieCardStack()
    }
}
