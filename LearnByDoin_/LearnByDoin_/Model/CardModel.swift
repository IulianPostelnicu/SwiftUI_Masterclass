//
//  CardModel.swift
//  LearnByDoin_
//
//  Created by Macbook Pro on 16.03.2021.
//

import SwiftUI

//MARK: - CARD MODEL
struct Card:Identifiable {
    var id=UUID()
    var title:String
    var headline:String
    var imageName: String
    var callToAction:String
    var message:String
    var gradientColors:[Color]
}
