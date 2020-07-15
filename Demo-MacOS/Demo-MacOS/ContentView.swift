//
//  ContentView.swift
//  Demo-MacOS
//
//  Created by 张力明 on 2020/7/15.
//  Copyright © 2020 张力明. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            Text("Hello World")
        }
        .font(Font.system(size: 30))
        .foregroundColor(Color.green)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
