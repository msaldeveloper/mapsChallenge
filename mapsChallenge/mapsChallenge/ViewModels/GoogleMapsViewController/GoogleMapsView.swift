//
//  GoogleMapsView.swift
//  mapsChallenge
//
//  Created by Mario Alberto Saldaña Martínez on 26/11/24.
//

import GoogleMaps
import SwiftUI

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
        // objectCamera.icon = UIImage(named: "geoVoyLogo")
        if let originalImage = UIImage(named: "geoVoyLogo") {
            let resizedImage = resizeImage(image: originalImage, targetSize: CGSize(width: 40, height: 40))
            objectCamera.icon = resizedImage
        }

        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        objectCamera.map = mapView
        return mapView
    }

    func resizeImage(image: UIImage, targetSize: CGSize) -> UIImage {
        let size = image.size
        let widthRatio = targetSize.width / size.width
        let heightRatio = targetSize.height / size.height
        let newSize = CGSize(width: size.width * widthRatio, height: size.height * heightRatio)
        let rect = CGRect(origin: .zero, size: newSize)
        UIGraphicsBeginImageContextWithOptions(newSize, false, 0.0)

        image.draw(in: rect)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()

        return newImage!
    }

    func updateUIView(_ uiView: GMSMapView, context: Context) {
        // Actualiza el mapa si es necesario
    }
}
