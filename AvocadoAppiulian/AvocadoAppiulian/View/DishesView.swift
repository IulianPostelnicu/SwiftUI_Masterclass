//
//  DishesView.swift
//  AvocadoAppiulian
//
//  Created by Macbook Pro on 13.03.2021.
//

import SwiftUI

struct DishesView: View {
    var body: some View {
        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 4)
        {
            VStack(alignment: .center , spacing: 4) {
                HStack{
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }//hstack
                Divider()
                HStack{
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                }//hstack
                Divider()
                HStack{
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Salads")
                }//hstack
                Divider()
                HStack{
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                }//hstack
            }//vstack
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 16){
                HStack{
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                    //.scaleEffect(3)
                HStack{
                    Divider()
                }
            }//vstack heart
            VStack( alignment: .leading , spacing: 4) {
                leftRow(name: "Guacamole", imageName: "icon-guacamole")
                Divider()
                leftRow(name: "Sandwich", imageName: "icon-sandwiches")
                Divider()
                leftRow(name: "Soup", imageName: "icon-soup")
                Divider()
                leftRow(name: "Smoothie", imageName: "icon-smoothies")
            }//vstack
        }//hstack
        .font(.system(.callout,design:.serif))
        .foregroundColor(.gray)
            .padding(.horizontal)
        .frame(maxHeight:220)
    }
}

struct IconModifier: ViewModifier {
    func body(content:Content)->some View{
        content
            .frame(width: 40, height: 40, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    }
}

struct DishesView_Previews: PreviewProvider {
    static var previews: some View {
        DishesView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}

struct leftRow: View {
    var name:String
    var imageName:String
    var body: some View {
        HStack{
            Text(name)
            Spacer()
            Image(imageName)
                .resizable()
                .modifier(IconModifier())
        }
    }
}
