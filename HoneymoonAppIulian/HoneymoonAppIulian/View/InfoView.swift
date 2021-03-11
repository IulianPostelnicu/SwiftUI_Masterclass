//
//  InfoView.swift
//  HoneymoonAppIulian
//
//  Created by Macbook Pro on 11.03.2021.
//

import SwiftUI

struct InfoView: View {
    //MARK: - properties
    @Environment (\.presentationMode) var presentationMode
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false){
       
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20, content: {
            HeaderComponent()
                
                Spacer(minLength: 10)
                
                Text("App Info")
                    .fontWeight(.black)
                    .modifier((TitleModifier()))
                
                AppInfoView()//hstack
                
                Text("Credits")
                    .fontWeight(.black)
                    .modifier(TitleModifier())
                
                CreditsView()//hstack
                Spacer(minLength: 10)
                
                Button(action: {
                    //print("button")
                    self.presentationMode.wrappedValue.dismiss()
                }, label: {
                    Text("Continue".uppercased())
                        .modifier(ButtonModifier())
                })
        })//vstack
            .frame(minWidth:0, maxWidth:.infinity)
            .padding(.top,15)
            .padding(.bottom,25)
            .padding(.horizontal,25)
    }//scrollview
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}

struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            RowAppInfoView(itemOne: "Application", itemTwo: "Honeymoon")
            RowAppInfoView(itemOne: "Compatibility", itemTwo: "IPhone/IPad")
            RowAppInfoView(itemOne: "Developer", itemTwo: "Iulian")
            RowAppInfoView(itemOne: "Designer", itemTwo: "Robert  Petras")
            RowAppInfoView(itemOne: "Website", itemTwo: "swiftuimasterclass.com")
            RowAppInfoView(itemOne: "Version", itemTwo: "1.0")
        })
    }
}

struct RowAppInfoView: View {
    //MARK: - properties
    var itemOne:String
    var itemTwo:String
    
    var body: some View {
        VStack {
            HStack{
                Text(itemOne)
                    .foregroundColor(Color.gray)
                Spacer()
                Text(itemTwo)
            }
            Divider()
        }
    }
}

struct CreditsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10, content: {
            HStack{
                Text("Photos")
                    .foregroundColor(Color.gray)
                Spacer()
                Text("Unsplash")
                
            }
            Divider()
            Text("Photographers")
                .foregroundColor(Color.gray)
            Text("Born in the United States as Emmanuel Radnitzky, Man Ray was a visual artist who made significant contributions to both the Dada and Surrealist movements. He was best known for his innovative techniques as well as his stunning fashion and portrait photography. He created iconic photograms named “Rayographs” after himself.")
                .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                .font(.footnote)
            
        })
    }
}
