//
//  LittieView.swift
//  LottieAnimation
//
//  Created by Promal on 27/8/21.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    
    
    var filename = "vcTransition2"
    
    
    func makeUIView (context: UIViewRepresentableContext <LottieView>) -> UIView {
        let view  = UIView(frame: .zero)
        
        let animationView = AnimationView()
        animationView.animation = Animation.named(filename)
        
        animationView.contentMode = .scaleAspectFit
        animationView.loopMode = .loop
        animationView.play()
        view.addSubview(animationView)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.backgroundBehavior = .pauseAndRestore
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
            
        ])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext <LottieView>) {
        
    }
    
}
