//
//  FeatureItemView.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 09.03.2021.
//

import SwiftUI

struct FeatureItemView: View {
    //MARK: - PROPERTY
    let player: Player
    
    
    //MARK: - BODY
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

struct FeatureItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeatureItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}
