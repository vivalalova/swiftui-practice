//
//  ContentView.swift
//  heart
//
//  Created by Lova on 2020/3/7.
//  Copyright © 2020 lova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var color = false
    @State var size = false

    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 200))
            .foregroundColor(color ? .yellow : .red)
            .scaleEffect(size ? 1.5 : 1)
            .animation(.default)
            .onTapGesture {
                self.color.toggle()
            }.onLongPressGesture {
                self.size.toggle()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
