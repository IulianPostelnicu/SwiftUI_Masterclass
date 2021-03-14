//
//  AvocadosView.swift
//  AvocadoAppiulian
//
//  Created by Macbook Pro on 12.03.2021.
//

import SwiftUI

struct AvocadosView: View {
    //MARK: - properties
    @State private var pulsateAnimation: Bool = false
    
    var body: some View {
        VStack {
            Spacer()
            Image("avocado")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 240, height: 240, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .shadow(color: Color("ColorBlackTransparentDark"), radius: 12, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 8)
                .scaleEffect(self.pulsateAnimation ? 1:0.9)
                .opacity(self.pulsateAnimation ? 1:0.9)
                .animation(Animation.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
            VStack {
                Text("Avocados".uppercased())
                    .font(.system(size: 42,weight:.bold, design: .serif))
                    .foregroundColor(.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 8)
                Text("Avocados are millennials' favorite fruit for good reason. They make pretty much every meal better, breakfast, lunch, and dinner included. Still craving more? We've got easy and delicious recipes for avo snacks and desserts, too.")
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .font(.system(.headline, design: .serif))
                    .foregroundColor(Color("ColorGreenLight"))
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
            }//vstack
            Spacer()
        }//vstack
        .background(Image("background")
                        .resizable()
                        .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/))
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        .onAppear(perform: {
            self.pulsateAnimation.toggle()
        })
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
            .environment(\.colorScheme, .dark)
    }
}
