//
//  FruitHeaderView.swift
//  FructusIulian
//
//  Created by Macbook Pro on 16.03.2021.
//

import SwiftUI

struct FruitHeaderView: View {
    //MARK: - PROPERTIES
    var fruit:Fruit
    @State private var isAnimating:Bool=false
    
    //MARK: - BODY
    var body: some View {
        ZStack{
            LinearGradient(gradient:Gradient(colors: fruit.gradientColors),startPoint: .topLeading,endPoint: .bottomLeading)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 6, y: 8)
                .padding(.vertical,20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
        }//zstack
        .frame(height:440)
        .onAppear(perform: {
            withAnimation(.easeOut(duration:0.5)){
                isAnimating=true
            }
        })
        
    }
}

//MARK: - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitData[0])
    }
}
