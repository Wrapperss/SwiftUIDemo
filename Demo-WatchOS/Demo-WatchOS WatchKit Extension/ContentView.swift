//
//  ContentView.swift
//  Demo-WatchOS WatchKit Extension
//
//  Created by 张力明 on 2020/7/15.
//  Copyright © 2020 张力明. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Hello, List")
        }
        .foregroundColor(Color.green)
        .font(Font.system(size: 20))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
