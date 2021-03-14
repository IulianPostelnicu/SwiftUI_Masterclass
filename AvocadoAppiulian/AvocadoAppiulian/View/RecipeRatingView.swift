//
//  RecipeRatingView.swift
//  AvocadoAppiulian
//
//  Created by Macbook Pro on 13.03.2021.
//

import SwiftUI

struct RecipeRatingView: View {
    //MARK: - properties
    var recipe: Recipe
    
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5)
        {
            ForEach(1...(recipe.rating) , id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }
        }
    }
}

struct RecipeRatingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipeData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
