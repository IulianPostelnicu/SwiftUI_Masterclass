//
//  FruitModel.swift
//  FructusIulian
//
//  Created by Macbook Pro on 16.03.2021.
//

import SwiftUI

//MARK: - fruits data model

struct Fruit:Identifiable {
    var id=UUID()
    var title:String
    var headline:String
    var image:String
    var gradientColors:[Color]
    var description:String
    var nutrition:[String]
}
