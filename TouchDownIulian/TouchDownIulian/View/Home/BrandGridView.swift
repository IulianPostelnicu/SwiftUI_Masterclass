//
//  BrandGridView.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 09.03.2021.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - property
    
    //MARK: - body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout, spacing: columnSpacing, content: {
                ForEach(brands){
                    brand in BrandItemView(brand:brand)
                }
            })//:lazygrid
            .frame(height:200)
            .padding(15)
            
        })//:scrorview
    }
}

//MARK: - preview
struct BrandGridView_Previews: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
