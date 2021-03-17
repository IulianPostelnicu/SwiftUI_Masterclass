//
//  FructusIulianApp.swift
//  FructusIulian
//
//  Created by Macbook Pro on 16.03.2021.
//

import SwiftUI

@main
struct FructusIulianApp: App {
    @AppStorage("isOnboarding") var isOnboarding:Bool=true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardinView()
            }else{
                ContentView()
            }
        }
    }
}
