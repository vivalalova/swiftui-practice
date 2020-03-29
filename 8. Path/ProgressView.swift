//
//  ProgressView.swift
//  8. Path
//
//  Created by Lova on 2020/3/29.
//  Copyright © 2020 taxigo. All rights reserved.
//

import SwiftUI

struct ProgressView: View {
    let size: CGFloat = 240

    private var purpleGradient = LinearGradient(gradient: Gradient(colors: [Color(red: 207 / 255, green: 150 / 255, blue: 207 / 255), Color(red: 107 / 255, green: 116 / 255, blue: 179 / 255)]),
                                                startPoint: .trailing,
                                                endPoint: .leading)
    var body: some View {
        VStack {
            Spacer()

            ZStack {
                Circle()
                    .stroke(Color(.systemGray6), lineWidth: 20)
                    .frame(width: size, height: size)

                Circle()
                    .trim(from: 0, to: 0.85)
                    .stroke(purpleGradient, lineWidth: 20)
                    .frame(width: size, height: size)
                    .overlay(VStack {
                        Text("85%")
                            .font(.system(size: 80, weight: .bold, design: .rounded))
                            .foregroundColor(Color(.systemGray))
                        Text("Complete")
                            .font(.system(.body, design: .rounded))
                            .bold()
                            .foregroundColor(Color(.systemGray))
                    })
            }.frame(width: size, height: size)

            Spacer()

            ZStack {
                Circle()
                    .trim(from: 0, to: 0.4).stroke(Color(.systemBlue), lineWidth: 40)

                Circle()
                    .trim(from: 0.4, to: 0.6).stroke(Color(.systemTeal), lineWidth: 40)
                Circle()
                    .trim(from: 0.6, to: 0.75).stroke(Color(.systemPurple), lineWidth: 40)
                Circle()
                    .trim(from: 0.75, to: 1).stroke(Color(.systemYellow), lineWidth: 50)
                    .overlay(Text("25%")
                        .font(.system(.title, design: .rounded))
                        .bold()
                        .foregroundColor(Color(.systemGray3))
                        .offset(x: 120, y: -100))
            }
            .frame(width: size, height: size)

            Spacer()
        }
    }
}

struct ProgressView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressView()
    }
}
