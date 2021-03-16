//
//  MotionAnimationView.swift
//  AfricaAppIulian
//
//  Created by Macbook Pro on 15.03.2021.
//

import SwiftUI

struct MotionAnimationView: View {
    //MARK: - PROPERTIES
    @State private var randomCircle=Int.random(in: 12...16)
    @State private var isAnimating:Bool=false
    
    //MARK: - FUNCTIONS
    //random coordinate
    func  randomCoordinates(max: CGFloat)->CGFloat{
        return CGFloat.random(in: 0...max)
    }
    //random size
    func randomSize()->CGFloat{
        return CGFloat(Int.random(in: 10...300))
    }
    //random scale
    func randomScale()->CGFloat{
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    //random speed
    func randomSpeed()->Double{
        return Double.random(in: 0.025...1.0)
    }
    
    //random delay
    func randomDelay()->Double{
        return Double.random(in:0...2)
    }
    
    //MARK: - BODY
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(0...randomCircle, id:\.self) { item in
                    Circle()
                        .foregroundColor(.gray)
                        .opacity(0.15)
                        .frame(width: randomSize(), height: randomSize(), alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .scaleEffect(isAnimating ?  randomScale() : 1)
                        .position(
                            x: randomCoordinates(max: geometry.size.width),
                            y: randomCoordinates(max: geometry.size.height)
                    )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(randomSpeed())
                                .delay(randomDelay())
                        )
                        .onAppear(perform: {
                            isAnimating=true
                        })
                        
                }//loop
            }//zstack
            .drawingGroup()
        }//geometry
    }
}


//MARK: - PREVIEW
struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView()
    }
}
