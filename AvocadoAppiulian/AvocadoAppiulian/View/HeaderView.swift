//
//  HeaderView.swift
//  AvocadoAppiulian
//
//  Created by Macbook Pro on 12.03.2021.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - properties
    @State private var showHeadlines: Bool=false
    var header:Header
    
    var slideAnimation:Animation{
        Animation.spring(response: 1.5, dampingFraction: 0.5, blendDuration: 0.5)
            .speed(1)
            .delay(0.25)
    }
    
    var body: some View {
        ZStack {
            Image(header.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                
            HStack(alignment: .top, spacing: 0) {
                Rectangle()
                    .fill(Color("ColorGreenLight"))
                    .frame(width: 4)
                
                VStack (alignment: .leading, spacing: 6){
                    Text(header.headline)
                        .font(.system(.title, design: .serif))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                        .shadow(radius: 3)
                    Text(header.subheadline)
                        .font(.footnote)
                        .lineLimit(/*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        .foregroundColor(Color.white)
                }//vstack
                .padding(.vertical, 0)
                .padding(.horizontal,20)
                .frame(width: 281, height: 105)
                .background(Color("ColorBlackTransparentLight"))
            }//hstack
            .frame(width: 285, height: 105, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .offset(x: -66, y: showHeadlines ? 75: 220)
            .animation(slideAnimation)
            .onAppear(perform: {
                self.showHeadlines.toggle()
            })
        }//zstack
        .frame(width: 480, height: 320, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(header: headersData[1])
            .previewLayout(.sizeThatFits)
            .environment(\.colorScheme, .dark)
    }
}
