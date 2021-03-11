//
//  RatingsSizesDetailView.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 10.03.2021.
//

import SwiftUI

struct RatingsSizesDetailView: View {
    //MARK: - propertty
    let sizes: [String]=["XS","S","M","L","XL"]
    
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            //ratings
            VStack(alignment: .leading, spacing: 3, content: {
                    Text("Ratings")
                        .font(.footnote)
                        .fontWeight(.semibold)
                        .foregroundColor(colorGray)
                
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 3, content: {
                    ForEach (1...5, id:\.self){
                        item in Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28, height: 28, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .background(colorGray.cornerRadius(5))
                                .foregroundColor(.white)
                        })
                    }
                })
            })//:vstack

            Spacer()
            //sizes
            
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundColor(colorGray)
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5, content: {
                    ForEach(sizes, id:\.self){
                        size in Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundColor(colorGray)
                                .frame(width:28,height:28,alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray,lineWidth: 2))
                        })
                    }
                })
            })//:vstack
        })//:hstack
    }
}

struct RatingsSizesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RatingsSizesDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
