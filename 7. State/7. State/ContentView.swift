//
//  ContentView.swift
//  7. State
//
//  Created by Lova on 2020/3/29.
//  Copyright © 2020 taxigo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isPlaying = false

    @State private var count = 0

    var body: some View {
        VStack {
            Button(action: {
                // 切換播放與停止按鈕
                self.isPlaying.toggle()
            }) {
                Image(systemName: isPlaying ? "stop.circle.fill" : "play.circle.fill")
                    .font(.system(size: 150))
                    .foregroundColor(isPlaying ? .red : .green)
            }
            .frame(width: 150, height: 150)

            Btn(color: .red, count: $count)
            Btn(color: .black, count: $count)
            Btn(color: .green, count: $count)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Btn: View {
    var color: Color
    @Binding var count: Int

    var body: some View {
        Button(action: {
            // 切換播放與停止按鈕
            self.count += 1
        }) {
            Circle()
                .frame(width: 150, height: 150)
                .overlay(
                    Text("\(self.count)")
                        .font(.system(size: 80, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                ).foregroundColor(color)
        }
    }
}
