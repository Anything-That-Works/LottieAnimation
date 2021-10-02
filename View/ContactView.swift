//
//  ContactView.swift
//  LottieAnimation
//
//  Created by Promal on 1/9/21.
//

import SwiftUI

struct ContactView: View {
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)), Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))]), startPoint: .top, endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack{
                LottieView(filename: "blackCat")
            }
            
            
        }
    }
}

struct ContactView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
