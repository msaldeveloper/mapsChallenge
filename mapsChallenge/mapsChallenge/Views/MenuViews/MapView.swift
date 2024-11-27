//
//  MapView.swift
//  mapsChallenge
//
//  Created by Mario Alberto Saldaña Martínez on 26/11/24.
//

import SwiftUI
import GoogleMaps

struct MapView: View {
    
    
    var body: some View {
        
            GoogleMapView(
                latitude: 20.54187661408799,
                longitude: -103.47428148559878,
                zoom: 16
            )
            .edgesIgnoringSafeArea(.all)
        }
}
