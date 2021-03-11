//
//  ProductDetailView.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 09.03.2021.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK: - property
    @EnvironmentObject var shop:Shop
    
    //MARK: - body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            //Navbar
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            //header
            HeaderDetailView()
                .padding(.horizontal)
            //detail top part
            TopPartDetailView()
                .zIndex(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                .padding(.horizontal)
            //detail bottom part
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0, content: {
                //ratings sizes
                RatingsSizesDetailView()
                    .padding(.top,-20)
                    .padding(.bottom,10)
                //description
                ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                })//:SCROLL
                //quantity favorite
                QuantityFavouriteDetailView()
                    .padding(.vertical, 10)
                //add to cart
                AddToCartDetailView()
                    .padding(.bottom,20)
                
                Spacer()
            })//:VSTACK
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top,-105))
        })//:VSTACK
        .zIndex(0)
        .ignoresSafeArea(.all,edges: .all)
        .background( Color(red: shop.selectedProduct?.red ?? sampleProduct.red,
                           green: shop.selectedProduct?.green ?? sampleProduct.green,
                           blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
                        .ignoresSafeArea(.all, edges: .all)
        )
    }
}

struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
            .environmentObject(Shop())
    }
}
