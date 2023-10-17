//
//  ColorImageView.swift
//  Colorized
//
//  Created by Kima on 16.10.2023.
//

import SwiftUI

struct ColorImageView: View {
    let color: Color
    
    var body: some View {
        Rectangle()
            .frame(height: 150)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous).stroke(Color.white, lineWidth: 4))
            .foregroundColor(color)
            .padding()
    }
    
}

struct ColorImageView_Previews: PreviewProvider {
    static var previews: some View {
        ColorImageView(color: .blue)
    }
}
