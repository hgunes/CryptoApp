//
//  ContentView.swift
//  CryptoApp
//
//  Created by Harun Gunes on 19/11/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.theme.background
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                Text("AccentColor")
                    .foregroundColor(Color.theme.accent)
                
                Text("GreenColor")
                    .foregroundColor(Color.theme.green)
                
                Text("RedColor")
                    .foregroundColor(Color.theme.red)
                
                Text("SecondaryText")
                    .foregroundColor(Color.theme.secondaryText)
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
