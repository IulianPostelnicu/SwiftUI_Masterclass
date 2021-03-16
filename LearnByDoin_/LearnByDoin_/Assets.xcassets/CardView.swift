//
//  CardView.swift
//  LearnByDoing
//
//  Created by Macbook Pro on 15.03.2021.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    var card:Card
    @State private var fadeIn:Bool=false
    @State private var moveDownward:Bool=false
    @State private var moveUpward:Bool=false
    @State private var showAlert:Bool=false
    
    var hapticImpact=UIImpactFeedbackGenerator(style: .heavy)
    
    //MARK: - BODY
    var body: some View {
        ZStack {
            Image(card.imageName)
                .opacity(fadeIn ? 1.0:0.0)
            VStack{
                Text(card.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                Text(card.headline)
                    .fontWeight(.light)
                    .foregroundColor(.white)
                    .italic()
            }//vstack
            .offset(y: moveDownward ? -218:-300)
            
            Button(action: {
                self.hapticImpact.impactOccurred()
                playSound(sound: "sound-chime", type: "mp3")
                self.showAlert.toggle()
            }, label: {
                HStack {
                    Text(card.callToAction.uppercased())
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .accentColor(.white)
                    Image(systemName: "arrow.right.circle")
                        .font(Font.title.weight(.medium))
                        .accentColor(.white)
                }//hstack
                .padding(.vertical)
                .padding(.horizontal, 30)
                .background(LinearGradient(gradient: Gradient(colors: card.gradientColors), startPoint: .top, endPoint: .bottom))
                .clipShape(Capsule())
                .shadow(color: Color("ColorShadow"), radius: 6, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 3 )
            })
           .offset(y: moveUpward ? 210:300)
            
        }//zstack
        .frame(width: 335, height: 545, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(
            LinearGradient(gradient: Gradient(colors:card.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
        .onAppear(){
            withAnimation(.linear(duration:1.2)){
                self.fadeIn.toggle()
            }
            withAnimation(.linear(duration: 0.8)){
                self.moveUpward.toggle()
                self.moveDownward.toggle()
            }
        }
        .alert (isPresented: $showAlert) {
            Alert(
                title: Text(card.title),
                message: Text(card.message),
                dismissButton: .default(Text("OK")))
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(card: cardData[3])
            .previewLayout(.sizeThatFits)
    }
}
