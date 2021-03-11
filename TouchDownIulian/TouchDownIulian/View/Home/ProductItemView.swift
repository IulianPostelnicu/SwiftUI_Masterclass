//
//  ProductItemView.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 09.03.2021.
//

import SwiftUI

struct ProductItemView: View {
    //MARK: - Property
    let product: Product
    
    //MARK: - Body
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6, content: {
            //photo
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }//:ZSTACK
            .background(Color(red:product.red,green:product.green,blue:product.blue))
            .cornerRadius(12)
            //name
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            //price
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundColor(.gray)
                
        })//:VSTACK
    }
}

//MARK: - Preview
struct ProductItemView_Previews: PreviewProvider {
    static var previews: some View {
        ProductItemView(product: products[0])
            .previewLayout(.fixed(width: 200, height: 300))
            .padding()
            .background(colorBackground)
    }
}
