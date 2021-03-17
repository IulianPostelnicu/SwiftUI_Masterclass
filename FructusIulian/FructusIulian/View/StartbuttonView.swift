//
//  Startbutton.swift
//  FructusIulian
//
//  Created by Macbook Pro on 16.03.2021.
//

import SwiftUI

struct StartbuttonView: View {
    //MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding:Bool?
    
    //MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding=false
        }, label: {
            HStack(spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }//hview
            .padding(.horizontal,16)
            .padding(.vertical, 10)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25)
            )
        })//button
        .accentColor(Color.white)
    }
}

//MARK: - PREVIEW
struct StartbuttonView_Previews: PreviewProvider {
    static var previews: some View {
        StartbuttonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
