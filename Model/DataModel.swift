//
//  DataModel.swift
//  LottieAnimation
//
//  Created by Promal on 31/8/21.
//
import SwiftUI

struct Story: Identifiable {
    var id: Int
    var offset: CGFloat
    var color1: Color
    var color2: Color
    var image: String
    var title: String
    var company: String
    var duration: String
    var animate: String
}

struct EducationDetails: Identifiable {
    var id: Int
    var offset: CGFloat
    var color1: Color
    var color2: Color
    var image: String
    var institute: String
    var subject: String
    var graduation: String
    var result: String
    var animate: String
}
