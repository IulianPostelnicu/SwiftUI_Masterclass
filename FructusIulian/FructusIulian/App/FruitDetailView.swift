//
//  FruitDetailView.swift
//  FructusIulian
//
//  Created by Macbook Pro on 16.03.2021.
//

import SwiftUI

struct FruitDetailView: View {
    //MARK: - PROPERTIES
    var fruit:Fruit
    
    //MARK: - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical , showsIndicators: false){
                VStack(alignment: .center, spacing: 20, content: {
                    //header
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading , spacing: 20, content:{
                        //title
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //headline
                        Text(fruit.headline)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        //nutrition
                        
                        
                        //subheadline
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //description
                        Text(fruit.description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        //link
                        SourceLinkView()
                            .padding(.top,20)
                            .padding(.bottom, 40)
                        
                    })//vstack
                        .padding(.horizontal,20)
                        .frame(maxWidth:640, alignment: .center)
                })//vstack
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }//scrollview
            .edgesIgnoringSafeArea(.top)
        }//navigation
    }
}

//MARK: - PREVIEW
struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitData[0])
    }
}
