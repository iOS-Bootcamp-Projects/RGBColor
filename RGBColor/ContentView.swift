//
//  ContentView.swift
//  RGBColor
//
//  Created by Aamer Essa on 19/12/2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redValue: Double = 0
    @State private var greenValue: Double = 0
    @State private var blueValue: Double = 0
    @State private var redText: String = "Red:"
    @State private var greenText: String = "Green:"
    @State private var blueText: String = "Blue:"
    @State private var colorRed: Color = Color.red
    @State private var colorBlue: Color = Color.blue
    @State private var colorGreen: Color = Color.green
    
    
    var body: some View {
        VStack {
            
            CustomColorSlider(sliderValue: $redValue, colorName: $redText,color: $colorRed)
            CustomColorSlider(sliderValue: $greenValue, colorName: $greenText,color: $colorGreen)
            CustomColorSlider(sliderValue: $blueValue, colorName: $blueText,color: $colorBlue)
            
            Text("Result:")
                Rectangle()
                    .fill(Color(red: redValue, green: greenValue, blue: blueValue))
                    .frame(width: 160, height: 160)
                    .cornerRadius(20)
            
        }.padding()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CustomColorSlider: View {
    
    @Binding  var sliderValue: Double
    @Binding  var colorName: String
    @Binding var color:Color
    
    var body: some View {
      
            VStack{
                Text("\(colorName)")
                Slider(value: $sliderValue,in: 0...1)
                    .tint(color)
            }.padding()
        
    }
}
