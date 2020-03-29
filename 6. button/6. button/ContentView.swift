//
//  ContentView.swift
//  6. button
//
//  Created by Lova on 2020/3/29.
//  Copyright © 2020 taxigo. All rights reserved.
//

import SwiftUI

struct GradientBackgroundStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View { configuration.label
        .frame(minWidth: 0, maxWidth: .infinity)
        .padding()
        .foregroundColor(.white)
        .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(40)
        .scaleEffect(configuration.isPressed ? 0.9 : 1)
    }
}

struct RotateStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View { configuration.label
        .frame(width: 44, height: 44)
        .padding()
        .foregroundColor(.white)
        .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
        .cornerRadius(44)
        .rotationEffect(configuration.isPressed ? Angle(degrees: 45) : Angle(degrees: 0))
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Button(action: {
                print("Hello World tapped!")
            }) {
                Text("Hello World")
                    .fontWeight(.bold)
                    .font(.title)
                    .padding()
                    .background(Color.purple)
                    .cornerRadius(40)
                    .foregroundColor(.white)
                    .padding(10)
                    .overlay(RoundedRectangle(cornerRadius: 40)
                        .stroke(Color.purple, lineWidth: 5))
            }

            Button(action: {
                print("Delete button tapped!")
            }) {
                HStack {
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
                .padding()
                .foregroundColor(.white)
//                .background(Color.red)
                .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]),
                                           startPoint: .leading,
                                           endPoint: .trailing))
                .cornerRadius(40)
                .shadow(color: .gray, radius: 20.0, x: 20, y: 10)
            }
            .font(.largeTitle)
            .foregroundColor(.red)

            Button(action: {
                print("Delete tapped!")
            }) {
                HStack {
                    Image(systemName: "trash").font(.title)
                    Text("Delete").fontWeight(.semibold).font(.title)
                }
                .frame(minWidth: 0, maxWidth: .infinity)
                .padding()
                .foregroundColor(.white)
                .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing)).cornerRadius(40)
            }.padding(.horizontal, 20)

            Button(action: {
                print("Delete tapped!")
            }) {
                HStack {
                    Image(systemName: "trash")
                        .font(.title)
                    Text("Delete")
                        .fontWeight(.semibold)
                        .font(.title)
                }
            }
            .buttonStyle(GradientBackgroundStyle())
            .padding(.horizontal, 20)

            Button(action: {
                print("Delete tapped!")
            }) {
                HStack {
                    Image(systemName: "sun.max")
                        .font(.title)
                }
            }
            .buttonStyle(RotateStyle())
            .padding(.horizontal, 20)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
