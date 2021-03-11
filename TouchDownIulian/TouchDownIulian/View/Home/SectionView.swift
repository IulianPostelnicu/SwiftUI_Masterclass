//
//  SectionView.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 09.03.2021.
//

import SwiftUI

struct SectionView: View {
    //MARK: - PROPERTY
    @State var rotateClockwise: Bool
    
    //MARK: - BODY
    var body: some View {
        VStack {
            Spacer()
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
                .rotationEffect(
                    Angle(degrees: rotateClockwise ? 90: -90))
            Spacer()
        }//:VSTACK
        .background(colorGray.cornerRadius(12))
        .frame(width:85)
    }
}

//MARK: - PREVIEW
struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: true)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(colorBackground)
    }
}
