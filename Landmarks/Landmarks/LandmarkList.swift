//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 张力明 on 2020/3/2.
//  Copyright © 2020 张力明. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
	
    var body: some View {
		NavigationView {
			List(landmarkData) { landmark in
				NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
					LandmarkRow(landmark: landmark)
				}
			}
			.navigationBarTitle("Landmarks")
		}
    }
	
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
		ForEach(["iPhone SE", "iPhone XS Max"], id: \.self) { deviceName in
			LandmarkList()
				.previewDevice(PreviewDevice(rawValue: deviceName))
				.previewDisplayName(deviceName)
		}
    }
}
