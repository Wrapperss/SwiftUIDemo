//
//  MapView.swift
//  Landmarks
//
//  Created by 张力明 on 2020/3/2.
//  Copyright © 2020 张力明. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
	
	var coordinate: CLLocationCoordinate2D
	
	func makeUIView(context: Context) -> MKMapView {
		MKMapView(frame: .zero)
	}
	
	func updateUIView(_ uiView: MKMapView, context: Context) {
		let span = MKCoordinateSpan(latitudeDelta: 0.02,
									longitudeDelta: 0.02)
		let region = MKCoordinateRegion.init(center: coordinate, span: span)
		uiView.setRegion(region, animated: true)
	}
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
		MapView(coordinate: landmarkData[0].locationCoordinate)
    }
}
