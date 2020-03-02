//
//  Landmark.swift
//  Landmarks
//
//  Created by 张力明 on 2020/3/2.
//  Copyright © 2020 张力明. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
	
	
	enum Category: String, CaseIterable, Codable, Hashable {
		case featured = "Featured"
		case lakes = "Lakes"
		case rivers = "Rivers"
	}
	
	var id: Int
	var name: String
	fileprivate var imageName: String
	fileprivate var coordinates: Coordinates
	var state: String
	var park: String
	var category: Category
	
	var locationCoordinate: CLLocationCoordinate2D {
		CLLocationCoordinate2D(
			latitude: coordinates.latitude,
			longitude: coordinates.longitude)
	}
}

extension Landmark {
	var image: Image {
		ImageStore.shared.image(name: imageName)
	}
}

struct Coordinates: Hashable, Codable {
	var latitude: Double
	var longitude: Double
}
