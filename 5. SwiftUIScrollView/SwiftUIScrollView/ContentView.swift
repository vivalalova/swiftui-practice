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
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Monday, AUG 20")
                        .font(.system(Font.TextStyle.caption))
                        .foregroundColor(.secondary)

                    Text("YOUR READING")
                        .font(.system(Font.TextStyle.title, design: Font.Design.rounded))
                        .fontWeight(.black)
                }
                Spacer()
            }.padding([.top, .horizontal])

            ScrollView(.horizontal) {
                HStack {
                    CardView(image: "swiftui-button", category: "SwiftUI", heading: "kerker", author: "lova")
                        .frame(width: 300)
                    CardView(image: "flutter-app", category: "SwiftUI", heading: "kerker", author: "lova")
                        .frame(width: 300)
                    CardView(image: "macos-programming", category: "SwiftUI", heading: "kerker", author: "lova")
                        .frame(width: 300)
                    CardView(image: "natural-language-api", category: "SwiftUI", heading: "kerker", author: "lova")
                        .frame(width: 300)
                }
            }

            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
