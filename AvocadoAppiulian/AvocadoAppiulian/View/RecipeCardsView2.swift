////
////  RecipeCardsView.swift
////  AvocadoAppiulian
////
////  Created by Macbook Pro on 13.03.2021.
////
//
//import SwiftUI
//
//struct RecipeCardsView: View {
//    //MARK: - properties
//    var recipe: Recipe
//    var hapticImpact = UIImpactFeedbackGenerator(style: .heavy)
//    @State private var showModal: Bool = false
//    
//    var body: some View {
//        VStack(alignment: .leading, spacing: 0)
//        {
//            Image(recipe.image)
//                .resizable()
//                .scaledToFit()
//                .overlay(
//                    HStack {
//                        Spacer()
//                        VStack {
//                            Image(systemName: "bookmark")
//                                .font(Font.title.weight(.light))
//                                .foregroundColor(.white)
//                                .imageScale(.small)
//                                .shadow(color: Color("ColorBlackTransparentDark"), radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
//                                .padding(.trailing,20)
//                                .padding(.top, 22)
//                            Spacer()
//                        }
//                    }//hstack
//                )
//            
//            VStack(alignment: .leading, spacing: 12, content: {
//                //title
//                Text(recipe.title)
//                    .font(.system(.title, design: .serif))
//                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                    .foregroundColor(Color("ColorGreenMedium"))
//                //headline
//                Text(recipe.headline)
//                    .font(.system(.body, design: .serif))
//                    .foregroundColor(Color.gray)
//                    .italic()
//                //rates
//                RecipeRatingView(recipe: recipe)
//                //cooking
//                RecipeCardsView(recipe: recipe)
//                    .font(.footnote)
//                    .foregroundColor(.gray)
//                
//            }).padding()
//            
//        }//vstack
//        
//        .background(Color.white)
//        .cornerRadius(12)
//        .shadow(color: Color("ColorBlackTransparentDark"), radius: 8, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
//        .onTapGesture {
//            self.hapticImpact.impactOccurred()
//            self.showModal = true
//        }
//        .sheet(isPresented: self.$showModal) {
//            RecipeDetailView(recipe: self.recipe)
//        }
//        
//    }
//}
//
//struct RecipeCardsView_Previews: PreviewProvider {
//    static var previews: some View {
//        RecipeCardsView(recipe: recipeData[0])
//            .previewLayout(.sizeThatFits)
//    }
//}
