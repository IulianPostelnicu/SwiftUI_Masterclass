//
//  FeaturedTabView.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 09.03.2021.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView{
            ForEach(players){ player in
                FeatureItemView(player : player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }//:TAB
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .previewDevice("iPhone 12 Pro")
            .background(Color.gray)
        
    }
}
