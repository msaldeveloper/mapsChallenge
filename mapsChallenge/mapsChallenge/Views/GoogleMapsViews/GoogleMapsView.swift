//
//  GoogleMapsView.swift
//  mapsChallenge
//
//  Created by Mario Alberto Saldaña Martínez on 26/11/24.
//

import SwiftUI
import GoogleMaps

struct GoogleMapView: UIViewRepresentable {
    var latitude: CLLocationDegrees
    var longitude: CLLocationDegrees
    var zoom: Float

    func makeUIView(context: Context) -> GMSMapView {
        let camera = GMSCameraPosition.camera(
            withLatitude: latitude,
            longitude: longitude,
            zoom: zoom
        )
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        return mapView
    }

    func updateUIView(_ uiView: GMSMapView, context: Context) {
        // Actualiza el mapa si es necesario
    }
}

