//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Harun Gunes on 19/11/2022.
//

import SwiftUI

@main
struct CryptoAppApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
        }
    }
}
