//
//  Shop.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 09.03.2021.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct: Bool=false
    @Published var selectedProduct:Product?=nil
    
}
