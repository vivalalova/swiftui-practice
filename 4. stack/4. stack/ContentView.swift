//
//  ContentView.swift
//  4. stack
//
//  Created by Lova on 2020/3/8.
//  Copyright © 2020 lova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()

            HStack(spacing: 15) {
                ProductView(title: "Basic", price: 9, text: .white, bg: .purple)

                ProductView(title: "Pro", price: 19, text: .black, bg: .gray)
                    .overlay(tag.offset(CGSize(width: 0, height: 5)), alignment: .bottom)
            }

            ProductView(title: "Pro", price: 19, text: .white, bg: .blue, icon: "wand.and.rays")
                .overlay(tag.offset(CGSize(width: 0, height: 5)), alignment: .bottom)

        }.padding(.horizontal)
    }

    var tag: some View {
        Text("Best for designer")
            .font(.system(.caption, design: .rounded))
            .fontWeight(.bold)
            .foregroundColor(.white)
            .padding(5)
            .background(Color(red: 255 / 255, green: 183 / 255, blue: 37 / 255))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 2) {
                Text("Choose")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)

                Text("Your Plan")
                    .font(.system(.largeTitle, design: .rounded))
                    .fontWeight(.black)
            }

            Spacer()
        }
    }
}

struct ProductView: View {
    var title: String
    var price: Int

    var text: Color
    var bg: Color

    var icon: String?

    var body: some View {
        VStack {
            image

            Text(title)
                .font(.system(.title, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(text)
            Text("$\(price)")
                .font(.system(size: 40, weight: .heavy, design: .rounded))
                .foregroundColor(text)
            Text("Per month")
                .font(.headline)
                .foregroundColor(text)
        }
        .padding(40)
        .frame(maxWidth: .infinity, minHeight: 100)
        .background(bg)
        .cornerRadius(10)
    }

    var image: some View {
        icon.map {
            Image(systemName: $0)
                .font(.system(.title))
                .foregroundColor(.white)
        }
    }
}
