//
//  ContentView.swift
//  LottieAnimation
//
//  Created by Promal on 28/8/21.
//

import SwiftUI

struct ContentView: View {

    @State private var action: Int? = 0
    var body: some View {
        HomeView()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
