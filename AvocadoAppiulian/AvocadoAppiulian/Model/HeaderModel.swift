//
//  HeaderModel.swift
//  AvocadoAppiulian
//
//  Created by Macbook Pro on 13.03.2021.
//

import Foundation
import SwiftUI

//MARK: - header model

struct Header:Identifiable{
    var id=UUID()
    var image:String
    var headline:String
    var subheadline:String
}
