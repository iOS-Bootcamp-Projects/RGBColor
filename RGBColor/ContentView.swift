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
    var body: some View {
        VStack {
            
            redView
            greenView
            blueView
                  
            Text("Result:")
                Rectangle()
                    .fill(Color(red: redValue, green: greenValue, blue: blueValue))
                    .frame(width: 160, height: 160)
                    .cornerRadius(20)
            
        }.padding()
    }
    
    var redView: some View {
        VStack{
            
            Text("Red:")
            Slider(value: $redValue,in: 0...1)
                .tint(Color.red)
            
        }.padding()
    } // end redView
    
    var greenView: some View{
        VStack{
            
            Text("Green:")
            Slider(value: $greenValue,in: 0...1)
                    .tint(Color.green)
            
        }.padding()
    }// end greenView
    
    var blueView: some View{
        VStack{
            
            Text("Blue:")
            Slider(value: $blueValue,in: 0...1)
                .tint(Color.blue)
            
        }.padding()
    }// end blueView
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
