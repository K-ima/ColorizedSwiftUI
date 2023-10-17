//
//  SliderView.swift
//  Colorized
//
//  Created by Kima on 17.10.2023.
//

import SwiftUI

struct SliderView: View {
    @Binding var value: Double
    
    var body: some View {
        HStack {
            Text(String(lround(value))).foregroundColor(.white)
                .frame(width: 40)
            Slider(value: $value, in: 0...255, step: 1)
        }
    }
}


