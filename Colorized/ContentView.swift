//
//  ContentView.swift
//  Colorized
//
//  Created by Kima on 16.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    var body: some View {
        ZStack {
            Color(.darkGray)
                .ignoresSafeArea()
            
            VStack {
                ColorImageView(color: Color(red: redSliderValue/255, green: greenSliderValue/255, blue: blueSliderValue/255))
                
                SliderView(value: $redSliderValue).tint(.red)
                SliderView(value: $greenSliderValue).tint(.green)
                SliderView(value: $blueSliderValue).tint(.blue)
                
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


