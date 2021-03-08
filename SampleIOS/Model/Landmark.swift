//
//  Landmark.swift
//  SampleIOS
//
//  Created by Alvin Raygon on 3/8/21.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable,Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    // You make the property private because users of the Landmarks structure care only about the image itself.
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    
    // Compute a locationCoordinate property that’s useful for interacting with the MapKit framework.
    var locationCoordinate: CLLocationCoordinate2D{
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    // Add a coordinates property to the structure using a nested Coordinates type that reflects the storage in the JSON data structure.
    struct Coordinates: Hashable,Codable {
        var latitude: Double
        var longitude: Double
    }
}
