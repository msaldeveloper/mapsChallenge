//
//  MenuView.swift
//  mapsChallenge
//
//  Created by Mario Alberto Saldaña Martínez on 26/11/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        TabView {
            MapView()
                .tabItem {
                    Label("Mapa", systemImage: "map")
                }.toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color.white.opacity(0.8), for: .tabBar)

            UserInfo()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }.toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color.white.opacity(0.8), for: .tabBar)
            
            SettingsView()
                .tabItem {
                    Label("Ajustes", systemImage: "gear")
                }.toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color.white.opacity(0.8), for: .tabBar)
            
        }.navigationBarBackButtonHidden(true)
            .accentColor(.blue)
    }
}

#Preview {
    MenuView()
}
