//
//  CategoryModel.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 09.03.2021.
//

import Foundation

struct Category: Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}
