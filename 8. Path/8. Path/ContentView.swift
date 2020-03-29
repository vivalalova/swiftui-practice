//
//  ContentView.swift
//  8. Path
//
//  Created by Lova on 2020/3/29.
//  Copyright © 2020 taxigo. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ZStack {
                Filled()

                Path { path in
                    path.move(to: CGPoint(x: 20, y: 20))
                    path.addLine(to: CGPoint(x: 300, y: 20))
                    path.addLine(to: CGPoint(x: 300, y: 200))
                    path.addLine(to: CGPoint(x: 20, y: 200))
                    path.closeSubpath()
                }
                .stroke(Color.red, lineWidth: 5)
            }
            .frame(height: 200)

            Path { path in
                path.move(to: CGPoint(x: 200, y: 200))
                path.addArc(center: .init(x: 200, y: 200),
                            radius: 150,
                            startAngle: Angle(degrees: 0.0),
                            endAngle: Angle(degrees: 90),
                            clockwise: true) }
                .fill(Color.green)

            Circle()
                .foregroundColor(.green)
                .frame(width: 200, height: 200)
                .overlay(RoundedRectangle(cornerRadius: 5)
                    .frame(width: 80, height: 80)
                    .foregroundColor(.white))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Filled: View {
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 20, y: 20))
            path.addLine(to: CGPoint(x: 300, y: 20))
            path.addLine(to: CGPoint(x: 300, y: 200))
            path.addLine(to: CGPoint(x: 20, y: 200))
            path.closeSubpath()
        }
        .fill(Color.green)
    }
}
