//
//  CardView.swift
//  FructusIulian
//
//  Created by Macbook Pro on 16.03.2021.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    @State private var isAnimating:Bool=false
    var fruit:Fruit
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                //card image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color( red: 0, green: 0, blue: 0, opacity: 0.15),radius: 8, x: 6, y: 10 )
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                //card title
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 2, y: 2)
                
                //fruit headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth:480)
                
                //button start
                StartbuttonView()

            }//vstack
        }//zstack
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(
                        gradient: Gradient(colors: fruit.gradientColors),
                        startPoint: .top,
                        endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
    }
}

//MARK: - PREVIEW
struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(fruit: fruitData[9])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
