//
//  ContentView.swift
//  HoneymoonAppIulian
//
//  Created by Macbook Pro on 10.03.2021.
//

import SwiftUI

struct ContentView: View {
    
    //MARK: - properties
    @State var showAlert: Bool=false
    @State var showGuide:Bool=false
    @State var showInfo:Bool=false
    @GestureState private var dragState=DragState.inactive
    private let dragAreaTreshold: CGFloat=65.0
    @State var lastCardIndex: Int=1
    @State private var cardRemovalTransition=AnyTransition.trailingBottom
    
    //MARK: - card views
    @State var cardViews : [CardView] = {
        var views = [CardView]()
        for index in 0..<2 {
            views.append(CardView(honeymoon: destinationData[index]))
        }
        return views
    }()
    
    //MARK: - move the card
    private func moveCards(){
        cardViews.removeFirst()
        self.lastCardIndex+=1
        let honeymoon = destinationData[lastCardIndex % destinationData.count]
        let newCardView = CardView(honeymoon: honeymoon)
        cardViews.append(newCardView)
    }
    
    //MARK: - top card finder
    private func isTopCard(cardView: CardView)-> Bool{
        guard let index =
                cardViews.firstIndex(where: { $0.id == cardView.id }) else
        { return false }
        return index == 0
    }
    
    //MARK: - enumState
    enum DragState{
        case inactive, pressing, dragging(translation: CGSize)
        
        
        var translation:CGSize{
            switch self {
            case .inactive, .pressing:
                return .zero
            case .dragging( let translation):
                return translation
            }
        }
        
        var isDragging:Bool{
            switch self{
            case .dragging:
                return true
            case .pressing, .inactive:
                return false
            }
        }
        
        var isPressing:Bool{
            switch self{
            case .pressing, .dragging:
                return true
            case .inactive:
                return false
            }
        }
        
        
    }
    
    var body: some View {
        VStack {
            //MARK: - header
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
                .opacity(dragState.isDragging ? 0.0 : 1.0)
                .animation(.default)
            Spacer()
            
            //MARK: - cards
            
            ZStack {
                ForEach( cardViews ){
                    cardView in cardView
                        .zIndex(self.isTopCard(cardView: cardView) ? 1 : 0)
                        .overlay(
                            ZStack{
                                //Xmark symbol
                                Image(systemName: "x.circle")
                                    .modifier(SymbolModifier())
                                    .opacity(self.dragState.translation.width < -self.dragAreaTreshold && self.isTopCard(cardView: cardView) ? 1.0 : 0.0)
                                //Heart Symbol
                                Image(systemName: "heart.circle")
                                    .modifier(SymbolModifier())
                                    .opacity(self.dragState.translation.width > self.dragAreaTreshold && self.isTopCard(cardView: cardView) ? 1.0 : 0.0)
                            }
                        )
                        .offset(x: self.isTopCard(cardView: cardView) ?  self.dragState.translation.width : 0,
                                y: self.isTopCard(cardView: cardView) ?  self.dragState.translation.height : 0)
                        .scaleEffect(self.dragState.isDragging && self.isTopCard(cardView: cardView) ? 0.75 : 1.0)
                        .rotationEffect(Angle(degrees: self.isTopCard(cardView: cardView) ?  Double(self.dragState.translation.width / 12) : 0))
                        .animation(.interpolatingSpring(stiffness: 120, damping: 120))
                        .gesture(LongPressGesture(minimumDuration: 0.01)
                                    .sequenced(before: DragGesture())
                                    .updating(self.$dragState, body: {
                                        (value , state , transaction) in
                                        switch value {
                                        case .first(true):
                                            state = .pressing
                                        case .second(true, let drag):
                                            state = .dragging(translation: drag?.translation ?? .zero)
                                        default:
                                            break
                                        }
                                    })
                                    .onChanged({( value) in
                                        guard case .second(true, let drag?) = value else{
                                            return
                                        }
                                        if drag.translation.width < -self.dragAreaTreshold {
                                            self.cardRemovalTransition = .leadingBottom
                                        }
                                        if drag.translation.width > self.dragAreaTreshold{
                                            self.cardRemovalTransition = .trailingBottom
                                        }
                                    })
                                    .onEnded({ (value) in
                                        guard case .second(true, let drag?) = value else {
                                            return
                                        }
                                        if drag.translation.width < -self.dragAreaTreshold ||
                                            drag.translation.width > self.dragAreaTreshold {
                                            playSound(sound: "sound-rise", type: "mp3")
                                            self.moveCards()
                                        }
                                    })
                        ).transition(self.cardRemovalTransition)
                }
            }
            .padding(.horizontal)
            
            
            Spacer()
            
            //MARK: - footer
            FooterView(showBookingAlert: $showAlert)
                .opacity(dragState.isDragging ? 0.0 : 1.0)
        }//:vstack
        
        .alert(isPresented: $showAlert){
            Alert(
                title:Text("SUCCESS"),
                message: Text("Wishing a lovely and most precious of the times toghether for the amazing couple."),
                dismissButton: .default(Text("Happ Honeymoon!")))
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
