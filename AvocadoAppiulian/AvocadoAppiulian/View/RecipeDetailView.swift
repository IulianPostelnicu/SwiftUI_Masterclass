//
//  RecipeDetailView.swift
//  AvocadoAppiulian
//
//  Created by Macbook Pro on 13.03.2021.
//

import SwiftUI

struct RecipeDetailView: View {
    //MARK: - properties
    var recipe:Recipe
    @State private var pulsate: Bool=false
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false)
        {
            VStack {
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()
            
                Group{
                    //title
                    Text(recipe.title)
                        .font(.system(.largeTitle, design: .serif))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color("ColorGreenAdaptive"))
                        .padding(.top, 10)
                    //ratings
                    RecipeRatingView(recipe: recipe)
                    //cooking
                    RecipeCookView(recipe: recipe)
                    //ingredients
                    Text("Ingredients")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .modifier(TitleModifier())
                    VStack(alignment: .leading, spacing: 5, content: {
                        ForEach(recipe.ingredients, id: \.self){
                            item in VStack(alignment: .leading, spacing: 5, content: {
                                Text(item)
                                    .font(.footnote)
                                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                                Divider()
                            })
                        }
                    })
                    //instructions
                    Text("Instructions")
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .modifier(TitleModifier())
                    ForEach(recipe.instructions, id: \.self){
                        item in VStack(alignment: .center, spacing: 5, content: {
                            Image(systemName: "chevron.down.circle")
                                .resizable()
                                .frame(width: 42, height: 42, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .imageScale(.large)
                                .font(Font.title.weight(.ultraLight))
                                .foregroundColor(Color("ColorGreenAdaptive"))
                            Text(item)
                                .lineLimit(nil)
                                .multilineTextAlignment(.center)
                                .font(.system(.body, design: .serif))
                                .frame(minHeight: 100)
                        })
                    }
                }
                .padding(.horizontal, 24)
                .padding(.vertical, 12)
                    
            }//vstack
        }//scrollviiew
        .edgesIgnoringSafeArea(.top)
        .overlay(
            HStack {
                Spacer()
                VStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                        
                    }, label: {
                        Image(systemName: "chevron.down.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                            .shadow(radius: 4)
                            .opacity( self.pulsate ? 1: 0.6)
                            .scaleEffect(self.pulsate ? 1.2:0.8, anchor: .center)
                            .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                    })
                    .padding(.trailing, 20)
                    .padding(.top, 24)
                    Spacer()
                }
            }
        )
        .onAppear(){
            self.pulsate.toggle()
        }
    }
    
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(recipe: recipeData[0])
    }
}
