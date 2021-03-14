//
//  SettingsView.swift
//  AvocadoAppiulian
//
//  Created by Macbook Pro on 12.03.2021.
//

import SwiftUI

struct SettingsView: View {
    //MARK: - properties
    @State private var enableNotification: Bool=true
    @State private var backgroundRefresh: Bool=false
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 0)
        {
            //MARK: - header
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 5)
            {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 4)
                
                Text("Avocados".uppercased())
                    .font(.system(.title, design:.serif))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color("ColorGreenAdaptive"))
            }
            .padding()

            Form{
                //MARK: - section 1
                Section(header: Text("General Settings")){
                    Toggle(isOn:$enableNotification){
                        Text("Notification Settings")
                    }
                    Toggle(isOn: $backgroundRefresh, label: {
                        Text("Background Refresh")
                    })
                }
                //MARK: - section 2
                Section(header: Text("Application")){
                    if enableNotification {
                        HStack{
                            Text("Product").foregroundColor(.gray)
                            Spacer()
                            Text("Avocado recipes")
                        }
                        HStack{
                            Text("Compatibility").foregroundColor(.gray)
                            Spacer()
                            Text("IPhone/IPad")
                        }
                        HStack{
                            Text("Developer").foregroundColor(.gray)
                            Spacer()
                            Text("Iulian")
                        }
                        HStack{
                            Text("Designer").foregroundColor(.gray)
                            Spacer()
                            Text("Robert Petras")
                        }
                        HStack{
                            Text("Version").foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0.0")
                        }
                    } else {
                        HStack{
                            Text("Personal message!").foregroundColor(.gray)
                        }
                    }

                }
            }
            
        }
        .frame(maxWidth:640)
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
