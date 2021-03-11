//
//  HeaderView.swift
//  HoneymoonAppIulian
//
//  Created by Macbook Pro on 10.03.2021.
//

import SwiftUI

struct HeaderView: View {
    //MARK: - properties
    @Binding var showGuideView:Bool
    @Binding var showInfoView:Bool
    let heptics=UINotificationFeedbackGenerator()
    
    var body: some View {
        HStack {
            Button(action: {
               // print("INFO")
                playSound(sound: "sound-click", type: "mp3")
                self.heptics.notificationOccurred(.success)
                self.showInfoView.toggle()
            }, label: {
                Image(systemName: "info.circle")
                    .font(
                        .system(size: 24, weight: .regular, design: .serif))
            })
            .accentColor(Color.primary)
            .sheet(isPresented: $showInfoView, content: {
                InfoView()
            })
            
            
            Spacer()
            
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            
            Spacer()
            
            Button(action: {
                //print("GUIDE")
                playSound(sound: "sound-click", type: "mp3")
                self.heptics.notificationOccurred(.success)
                self.showGuideView.toggle()
            }, label: {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular, design: .serif))
            })
            .accentColor(Color.primary)
            .sheet(isPresented: $showGuideView, content: {
                GuideView()
            })
            
        }//:hstack
        .padding()
    }
}

struct HeaderView_Previews: PreviewProvider {
    @State static var  showGuide:Bool=false
    @State static var showInfo:Bool=false
    
    static var previews: some View {
        HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
