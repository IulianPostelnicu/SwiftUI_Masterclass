//
//  CardView.swift
//  HoneymoonAppIulian
//
//  Created by Macbook Pro on 10.03.2021.
//

import SwiftUI

struct CardView: View, Identifiable {
    //MARK: - properties
    let id=UUID()
    var honeymoon: Destination
    
    var body: some View {
        Image(honeymoon.imageName)
            .resizable()
            .cornerRadius(24)
            .scaledToFit()
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .overlay(
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 12, content: {
                    Text(honeymoon.place.uppercased())
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .shadow(radius: 1)
                        .padding(.horizontal,18)
                        .padding(.vertical,4)
                        .overlay(
                            Rectangle().fill(Color.white)
                                .frame(height:1),
                            alignment: .bottom
                        )
                    Text(honeymoon.country.uppercased())
                        .foregroundColor(.black)
                        .font(.footnote)

                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(minWidth: 85)
                        .padding(.horizontal,10)
                        .padding(.vertical,5)
                        .background(
                            Capsule().fill(Color.white)
                        )
                })//:vstack
                .frame(minWidth: 280)
                .padding(.bottom,100),
                alignment: .bottom
            )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(honeymoon: destinationData[0])
            .previewLayout(.fixed(width: 375, height: 600))
    }
}
