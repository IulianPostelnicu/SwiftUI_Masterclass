//
//  ContentView.swift
//  FructusIulian
//
//  Created by Macbook Pro on 16.03.2021.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits:[Fruit]=fruitData
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List{
                ForEach(fruits.shuffled()){
                    item in
                    NavigationLink(
                        destination: FruitDetailView(fruit: item),
                        label: {
                            FruitRowView(fruit: item)
                                .padding(.vertical, 4)
                            
                        })
                }
            }
            .navigationTitle("Fruits")
            .font(.title3)
        }
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
