//
//  ContentView.swift
//  2.text
//
//  Created by Lova on 2020/3/7.
//  Copyright © 2020 lova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
            .fontWeight(.heavy)
            .font(.system(.title, design: .rounded))
            .foregroundColor(.green)
            .multilineTextAlignment(.trailing)
            .lineLimit(1)
            .truncationMode(.tail)
//            .rotation3DEffect(.degrees(30), axis: (x: 1, y: 0, z: 0))
            .shadow(color: .red, radius: 1, x: 1, y: 1)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
