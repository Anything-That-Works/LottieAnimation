//
//  HomeView.swift
//  LottieAnimation
//
//  Created by Promal on 31/8/21.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            VStack (spacing:0){
                MapView()
                    .ignoresSafeArea(edges: .top)
                    .frame(height: 180)
                ZStack{
                    //                    NavigationLink(destination: Carousel_Slider(), tag: 1, selection: $action) {
                    //                        EmptyView()
                    //                    }
                    LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.9750756621, green: 0.9603509307, blue: 0.9302219748, alpha: 1)), Color(#colorLiteral(red: 0.8185474277, green: 0.8136824965, blue: 1, alpha: 1))]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                    VStack(){
                        ImageView()
                            .offset(x: 0, y: -300)
                            .padding(.bottom, -350)
                        ZStack(alignment: .leading){
                            Rectangle()
                                .foregroundColor(Color(#colorLiteral(red: 0.882266283, green: 0.882415235, blue: 0.9209091067, alpha: 1)))
                                .cornerRadius(10)
                                .cornerRadius(10)
                                .shadow(radius: 5)
                                .frame(height: 140)
                            VStack(alignment: .leading, spacing: 0){
                                Text("Promal Barua").font(.largeTitle).bold().foregroundColor(Color(#colorLiteral(red: 0.180370301, green: 0.1804075241, blue: 0.1803653836, alpha: 1)))
                                Text("Freelancer").font(.subheadline).foregroundColor(Color(#colorLiteral(red: 0.180370301, green: 0.1804075241, blue: 0.1803653836, alpha: 1))).padding(.bottom,5)
                                Divider()
                                VStack(alignment: .leading){
                                    Text("\"Do what you can today,").bold().padding(.leading, 15)
                                    Text("to do what you want tomorrow.\"").bold().padding(.leading, 80)
                                }
                                .padding(.top, 10)
                            }.padding()
                        }
                        .padding(.horizontal, 20)
                        
                        //                        Button(action: {
                        //                            self.action = 1
                        //                        }, label: {
                        //                            HStack{
                        //                                Image(systemName: "books.vertical.fill")
                        //                                Text("Education")
                        //                            }.frame(width: 340, alignment: .leading)
                        //                            .cornerRadius(5.0)
                        //                        }).buttonStyle(LightButtonStyle())
                        LottieCardStack()
                        Spacer()
                    }
                }
            }
        }
        .navigationTitle("")
        .navigationBarHidden(true)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
