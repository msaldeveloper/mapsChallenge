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
        let objectCamera = GMSMarker()
        let camera = GMSCameraPosition.camera(
            withLatitude: latitude,
            longitude: longitude,
            zoom: zoom
        )
        objectCamera.position = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        objectCamera.map = mapView
        return mapView
    }

    func updateUIView(_ uiView: GMSMapView, context: Context) {
        // Actualiza el mapa si es necesario
    }
}

