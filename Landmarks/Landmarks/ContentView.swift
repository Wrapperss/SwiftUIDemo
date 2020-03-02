//
//  ContentView.swift
//  Landmarks
//
//  Created by 张力明 on 2020/3/2.
//  Copyright © 2020 张力明. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
		VStack {
			MapView()
				.frame(height: 300)
			CircleImage()
				.offset(y: -130)
				.padding(.bottom, -130)
			VStack(alignment: .leading) {
				Text("Turlt Rock")
					.font(.title)
				HStack {
					Text("Joshua Tree National Park")
						.font(.subheadline)
					Spacer()
					Text("California")
						.font(.subheadline)
				}
			}
			.padding()
			Spacer()
		}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
