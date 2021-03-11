//
//  TitleModifier.swift
//  HoneymoonAppIulian
//
//  Created by Macbook Pro on 11.03.2021.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content)->some View{
        content
            .font(.largeTitle)
            .foregroundColor(Color.pink)
    }
}

