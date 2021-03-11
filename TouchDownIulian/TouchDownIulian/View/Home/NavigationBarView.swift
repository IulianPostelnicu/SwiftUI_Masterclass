//
//  NavigationBarView.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 08.03.2021.
//

import SwiftUI

struct NavigationBarView: View {
    //MARK: - PROPERTIES
    @State private var isAnimated:Bool=false
    
    //MARK: - BODY
    var body: some View {
        HStack{
            Button(action: {},
                   label:{
                    Image(systemName: "magnifyingglass")
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.black)
                   })//BUTTON

            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1: 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration:0.5)){
                        isAnimated.toggle()
                    }
                })
            
            Spacer()
            
            Button(action:{},
                   label:{
                    ZStack{
                        
                        Image(systemName: "cart")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.black)
                        
                    Circle()
                        .fill(Color.red)
                        .frame(width: 14, height: 14, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x: 13, y: -10)
                    }
                   })//:BUTTON
        }//:HSTACK
    }
}

//MARK: - PREVIEW
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
