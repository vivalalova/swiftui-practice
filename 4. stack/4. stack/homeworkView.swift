//
//  homeworkView.swift
//  4. stack
//
//  Created by Lova on 2020/3/14.
//  Copyright © 2020 lova. All rights reserved.
//

import SwiftUI

struct homeworkView: View {
    var body: some View {
        VStack {
            ZStack {
                ProductView(title: "a", price: 2, text: .black, bg: .red, icon: "circle")
                    .padding(.horizontal)
                    .offset(x: 0, y: 0)

                ProductView(title: "a", price: 2, text: .black, bg: .blue, icon: "circle")
                    .padding(.horizontal)
                    .offset(x: 0, y: 120)

                ProductView(title: "a", price: 2, text: .white, bg: .black, icon: "circle")
                    .padding(.horizontal)
                    .offset(x: 0, y: 240)
            }

            Spacer()
        }
    }
}

struct homeworkView_Previews: PreviewProvider {
    static var previews: some View {
        homeworkView()
    }
}
