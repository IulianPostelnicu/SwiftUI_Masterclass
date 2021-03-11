//
//  GuideView.swift
//  HoneymoonAppIulian
//
//  Created by Macbook Pro on 10.03.2021.
//

import SwiftUI

struct GuideView: View {
    //MARK: - properties
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false, content: {
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
                
                HeaderComponent()
                
                Spacer()
                
                Text("Get Started!")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                Text("Discover and pick the perfect destination for your romantic Honeymoon!")
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
                
                Spacer(minLength: 10)
                
                VStack(alignment: .leading, spacing: 25, content: {
                    GuideComponent(
                        title: "Like",
                        subtitle: "Swipe right",
                        description: "Do you like the destination? Swipe right to add to favorites!",
                        icon: "heart.circle")
                    
                    GuideComponent(
                        title: "Dismiss",
                        subtitle: "Swipe left",
                        description: "Would you rather skip this place? Swipe left to go to next image!",
                        icon: "xmark.circle")
                    
                    GuideComponent(
                        title: "Book",
                        subtitle: "Tap the button",
                        description: "We have a great selection of honeymoon destinations that would fit for you and your partner!",
                        icon: "checkmark.square")
                })
                
                Spacer(minLength: 10)
                
                Button(action: {
                   // print("button continue was tapped")
                    self.presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                })
                
            })//vstack
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
            .padding(.top,15)
            .padding(.bottom,25)
            .padding(.horizontal,25)
        })//scrollview
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideView()
    }
}
