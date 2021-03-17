//
//  OnboardinView.swift
//  FructusIulian
//
//  Created by Macbook Pro on 16.03.2021.
//

import SwiftUI

struct OnboardinView: View {
    //MARK: - PROPERTIES
    var fruits:[Fruit]=fruitData
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits) { item in
                CardView(fruit: item)
            }
        }//tabview
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnboardinView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardinView()
    }
}
