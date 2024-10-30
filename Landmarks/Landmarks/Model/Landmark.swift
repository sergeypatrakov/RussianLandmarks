//
//  Landmark.swift
//  Landmarks
//
//  Created by Sergey Patrakov on 11.10.2024.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    let id: Int
    let name: String
    let city: String
    let region: String
    let description: String
    var isFavorite: Bool
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case square = "Square"
        case lake = "Lake"
        case memorial = "Memorial"
        case palace = "Palace"
        case businessCenter = "Business Center"
        case street = "Street"
        case mosque = "Mosque"
        case park = "Park"
        case plateau = "Plateau"
    }
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinates: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        let latitude: Double
        let longitude: Double
    }
}
