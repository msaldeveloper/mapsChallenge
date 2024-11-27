//
//  UserInfo.swift
//  mapsChallenge
//
//  Created by Mario Alberto Saldaña Martínez on 26/11/24.
//

import SwiftUI

struct UserInfo: View {
    let defaults = UserDefaults.standard
    var body: some View {
        VStack{
            HStack{
                Text("nombre de usuario:")
                Text("GeoVoy").font(.title)
            }

            HStack{
                Text("Email:")
                Text(verbatim: defaults.string(forKey: "Email") ?? "nadie").font(.title)
            }
                        
        }
    }
}

#Preview {
    UserInfo()
}
