//
//  RecipeCookView.swift
//  AvocadoAppiulian
//
//  Created by Macbook Pro on 13.03.2021.
//

import SwiftUI

struct RecipeCookView: View {
    //MARK: - properties
    var recipe:Recipe
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 12, content: {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 2, content: {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            })
            HStack(alignment: .center, spacing: 2, content: {
                Image(systemName: "clock")
                Text("Prep.: \(recipe.preparation)")
            })
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 2, content: {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            })
        })//hstack
    }
}

struct RecipeCookView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookView(recipe: recipeData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}
