//
//  TopPartDetailView.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 09.03.2021.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - property
    @EnvironmentObject var shop:Shop
    @State private var isAnimated: Bool=false
    
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6, content: {
            //price
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35,anchor: .leading)
            })//:VSTACK
            .offset(y: isAnimated ? -50:-75)
            
            Spacer()
            
            //Photo
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimated ? 0: -35)
        })//:HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration:0.75)){
                isAnimated.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
