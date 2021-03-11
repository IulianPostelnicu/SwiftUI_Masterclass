//
//  AddToCartDetailView.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 10.03.2021.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK: - properrty
    @EnvironmentObject var shop:Shop
    
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            
            Spacer()
            
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
         
            Spacer()
        })//;button
        .padding(15)
        .background(
        Color(
            red:shop.selectedProduct?.red ?? sampleProduct.red,
            green:shop.selectedProduct?.green ?? sampleProduct.green,
            blue:shop.selectedProduct?.blue ?? sampleProduct.blue
        )
    )
        .clipShape(Capsule())
    }
}

struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
