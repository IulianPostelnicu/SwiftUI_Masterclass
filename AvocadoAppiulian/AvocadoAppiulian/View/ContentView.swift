//
//  ContentView.swift
//  AvocadoAppiulian
//
//  Created by Macbook Pro on 12.03.2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - properties
    var headers:[Header]=headersData
    var facts:[Fact]=factsData
    var recipes:[Recipe]=recipeData
    
    var body: some View {
        
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
            VStack(alignment: .center, spacing: 20, content: {
                //MARK: - header
                
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack(alignment: .top, spacing: 0, content: {
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                        
                    }) //hstack
                })
                
                //MARK: - dishes
                
                Text("Avocado Dishes")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .modifier(TitleModifier())
                DishesView()
                    .frame(maxWidth: 640)
                
                //MARK: - avocado fats
                Text("Avocado Facts")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .modifier(TitleModifier())
                ScrollView(.horizontal, showsIndicators: false, content: {
                    HStack(alignment: .top, spacing: 60)
                    {
                        ForEach( facts ){
                            item in FactsView(fact: item)
                        }
                    }//hstack
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                })
                
                //MARK: - recipe cards
                Text("Avocado Recipes")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .modifier(TitleModifier())
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                    ForEach(recipes){
                        item in RecipeCardView(recipe: item)
                    }
                })
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                //MARK: - footer
                VStack{
                    Text("All About Avocados")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .modifier(TitleModifier())
                    Text("Everything you wanted to learn about avocado but you didn t find")
                        .multilineTextAlignment(.center)
                        .lineLimit(2)
                        .foregroundColor(.gray)
                        .frame(minHeight:60)
                }//vstack
                .frame(maxWidth:640)
                .padding()
                .padding(.bottom,85)
                    
            })//vstack

        })//scrollview
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .padding(0)
}
}

struct TitleModifier:ViewModifier {
    func body(content: Content)->some View{
        content
            .font(.system(.title,design:.serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headersData, facts: factsData, recipes: recipeData)
    }
}

