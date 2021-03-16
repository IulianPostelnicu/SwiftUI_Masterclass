//
//  ContentView.swift
//  LearnByDoin_
//
//  Created by Macbook Pro on 15.03.2021.
//

import SwiftUI

struct ContentView: View {
//MARK: - PROPERTIES
    var cards:[Card]=cardData
    
    //MARK: - BODY
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false, content: {
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
                ForEach(cards) { item in
                    CardView(card: item)
                }
            }//HSTACK
        })//SCROLLVIEW
    .padding(20)

        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(cards: cardData)
    }
}
