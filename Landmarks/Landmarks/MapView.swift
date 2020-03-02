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
	
	func makeUIView(context: Context) -> MKMapView {
		MKMapView(frame: .zero)
	}
	
	func updateUIView(_ uiView: MKMapView, context: Context) {
		let coordinate = CLLocationCoordinate2D(latitude: 34.011286,
												longitude: -116.166868)
		let span = MKCoordinateSpan(latitudeDelta: 2.0,
									longitudeDelta: 2.0)
		let region = MKCoordinateRegion.init(center: coordinate, span: span)
		uiView.setRegion(region, animated: true)
	}
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
