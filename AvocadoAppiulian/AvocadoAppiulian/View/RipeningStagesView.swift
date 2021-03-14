//
//  RipeningStagesView.swift
//  AvocadoAppiulian
//
//  Created by Macbook Pro on 12.03.2021.
//

import SwiftUI

struct RipeningStagesView: View {
    //MARK: - properties
    var ripeningStages:[Ripening]=ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            VStack{
                Spacer()
                HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 25, content: {
                    ForEach(ripeningStages){
                        item in RipeningView(ripening: item)
                    }
                })
                Spacer()
            }
            .padding(.vertical)
            .padding(.horizontal, 25)
        })
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}
