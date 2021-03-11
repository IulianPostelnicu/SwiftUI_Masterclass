//
//  NavigationBarDetailView.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 09.03.2021.
//

import SwiftUI

struct NavigationBarDetailView: View {
    //MARK: - property
    @EnvironmentObject var shop:Shop
    
    //MARK: - body
    
    var body: some View {
        HStack{
            Button(action: {
                withAnimation(.easeIn){
                    feedback.impactOccurred()
                    shop.selectedProduct=nil
                    shop.showingProduct=false
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
            })
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            })
            
        }//:HSTACK
    }
}

//MARK: - preview
struct NavigationBarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
