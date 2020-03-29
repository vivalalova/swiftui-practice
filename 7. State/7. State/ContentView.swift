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

    @State private var count2 = 0

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

            Text("\(count2)")
                .font(.system(size: 50))

            HStack {
                Btn(color: .red, count: $count2)
                Btn(color: .black, count: $count2)
                Btn(color: .green, count: $count2)
            }
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

    @State private var pressCount = 0

    var body: some View {
        Button(action: {
            // 切換播放與停止按鈕
            self.count += 1
            self.pressCount += 1
        }) {
            Circle()
                .frame(width: 100, height: 100)
                .overlay(
                    Text("\(self.pressCount)")
                        .font(.system(size: 80, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                ).foregroundColor(color)
        }
    }
}
