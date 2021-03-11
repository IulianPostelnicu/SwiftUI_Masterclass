//
//  FooterView.swift
//  HoneymoonAppIulian
//
//  Created by Macbook Pro on 10.03.2021.
//

import SwiftUI

struct FooterView: View {
    //MARK: - properties
    @Binding var showBookingAlert:Bool
    let heptics=UINotificationFeedbackGenerator()
    
    var body: some View {
        HStack {
            Image(systemName: "xmark.circle")
                .font(.system(size: 42, weight: .light, design: .default))
            
            Spacer()
            
            Button(action: {
                //print("succes")
                playSound(sound: "sound-click", type: "mp3")
                self.heptics.notificationOccurred(.success)
                self.showBookingAlert.toggle()
            }, label: {
                Text("Book Destination".uppercased())
                    .font(.system(.subheadline, design: .rounded))
                    .fontWeight(.heavy)
                    .padding(.horizontal,20)
                    .padding(.vertical,12)
                    .accentColor(Color.pink)
                    .background(
                        Capsule().stroke(Color.pink, lineWidth: 2)
                    )
            })//button
            
            Spacer()
            
            Image(systemName: "heart.circle")
                .font(.system(size: 42, weight: .light, design: .default))
        }//hstack
        .padding()
    }
}

struct FooterView_Previews: PreviewProvider {
    @State static var showAlert:Bool=false
    static var previews: some View {
        FooterView(showBookingAlert: $showAlert)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}
