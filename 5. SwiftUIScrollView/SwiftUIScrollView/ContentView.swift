//
//  ContentView.swift
//  SwiftUIScrollView
//
//  Created by Lova on 2020/3/14.
//  Copyright © 2020 lova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            VStack {
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "kerker", author: "lova")
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "kerker", author: "lova")
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "kerker", author: "lova")
                CardView(image: "swiftui-button", category: "SwiftUI", heading: "kerker", author: "lova")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
