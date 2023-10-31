//
//  ColorImageView.swift
//  Colorized
//
//  Created by Kima on 16.10.2023.
//

import SwiftUI

struct ColorImageView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Rectangle()
            .frame(height: 150)
            .cornerRadius(20)
            .overlay(
                RoundedRectangle(
                    cornerRadius: 20,
                    style: .continuous
                )
                .stroke(Color.white, lineWidth: 4))
            .foregroundColor(
                Color(
                    red: red / 255,
                    green: green / 255,
                    blue: blue / 255
                )
            )
            .padding()
    }
}

struct ColorImageView_Previews: PreviewProvider {
    static var previews: some View {
        ColorImageView(red: 0.5, green: 0.5, blue: 0.5)
    }
}
