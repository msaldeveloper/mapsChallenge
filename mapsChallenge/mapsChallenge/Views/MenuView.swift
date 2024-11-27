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
                }

            UserInfo()
                .tabItem {
                    Label("Perfil", systemImage: "person")
                }
            SettingsView()
                .tabItem {
                    Label("Ajustes", systemImage: "gear")
                }
        }.navigationBarBackButtonHidden(true)
    }
}

#Preview {
    MenuView()
}
