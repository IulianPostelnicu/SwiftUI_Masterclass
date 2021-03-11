//
//  TouchDownApp.swift
//  TouchDownIulian
//
//  Created by Macbook Pro on 08.03.2021.
//

import SwiftUI

@main
struct TouchDownApp: App {
    var body: some Scene {
        WindowGroup{
            ContentView()
                .environmentObject(Shop())
        }
    }
}


