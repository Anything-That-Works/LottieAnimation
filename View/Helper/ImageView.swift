//
//  ImageView.swift
//  LottieAnimation
//
//  Created by Promal on 28/8/21.
//

import SwiftUI

struct ImageView: View {
    
    var body: some View {
        ZStack{
            LottieView(filename: "avater")
                .frame(width: 400, height: 400)
            Image("User")
                .resizable()
                .scaledToFit()
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color(#colorLiteral(red: 0.1298420429, green: 0.1298461258, blue: 0.1298439503, alpha: 1)), lineWidth: 5).blur(radius: 3))
                .frame(width: 220)
            
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
