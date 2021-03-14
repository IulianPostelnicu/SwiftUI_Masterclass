//
//  FactModel.swift
//  AvocadoAppiulian
//
//  Created by Macbook Pro on 13.03.2021.
//

import SwiftUI
//MARK: - fact model

struct Fact: Identifiable {
    var id = UUID()
    var image:String
    var content: String   
}
