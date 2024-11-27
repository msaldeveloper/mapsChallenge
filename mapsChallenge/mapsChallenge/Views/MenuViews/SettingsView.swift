//
//  SettingsView.swift
//  mapsChallenge
//
//  Created by Mario Alberto Saldaña Martínez on 26/11/24.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    SectionButton(
                        icon: "gear",
                        title: "Configuración de cuenta"
                    )
                    SectionButton(
                        icon: "bell",
                        title: "Notificaciones"
                    )
                    SectionButton(
                        icon: "person.badge.key",
                        title: "Privacidad"
                    )
                    SectionButton(
                        icon: "character.bubble",
                        title: "Idioma"
                    )
                    SectionButton(
                        icon: "lock.shield",
                        title: "Contraseñas"
                    )
                    SectionButton(
                        icon: "person",
                        title: "Perfil"
                    )
                }
                .padding()
            }
        }
    }
}

struct SectionButton: View {
    let icon: String
    let title: String

    var body: some View {
        Button {
            print("\(title) seleccionado")
        } label: {
            ZStack {
                Rectangle()
                    .fill(.gray)
                    .opacity(0.2)
                    .frame(height: 130)
                    .cornerRadius(10)
                HStack {
                    Image(systemName: icon)
                        .foregroundStyle(.black)
                        .font(.largeTitle)
                        .padding(.leading, 20)
                    Spacer()
                    Text(title)
                        .font(.title2)
                        .foregroundStyle(.black)
                        .padding(.trailing, 20)
                }
            }
            .padding(.horizontal)
        }
    }
}


#Preview {
    SettingsView()
}
