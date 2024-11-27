//
//  ContentView.swift
//  mapsChallenge
//
//  Created by Mario Alberto Saldaña Martínez on 26/11/24.
//

import SwiftUI

struct SplashScreen: View {
    @State var isActive = false
    
    var body: some View {
        if isActive {
            MenuView()//change for LoginView()
        }else {
            VStack {
                Image("mapsLogo")
                    .resizable()
                    .scaledToFit()
                
                Text("Maps Challenge").font(.title).padding(.top)
            }.onAppear(perform: {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isActive = true
                }
            })
            
            .padding()
        }
        
    }
}

#Preview {
    SplashScreen()
}
