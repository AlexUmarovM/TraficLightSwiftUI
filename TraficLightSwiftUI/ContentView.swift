//
//  ContentView.swift
//  TraficLightSwiftUI
//
//  Created by Александр Умаров on 21.07.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let lightOn: CGFloat = 1.0
    let lightOff: CGFloat = 0.3
    
    @State var buttonName = "START"
    @State var redLight = TraficLight(redValue: 100)
    @State var yellowLight = TraficLight(redValue: 100, greenValue: 100)
    @State var greenLight = TraficLight(greenValue: 100)
    @State var glowingLight: TraficLight?
    
    var body: some View {
        VStack {
            redLight
            yellowLight
            greenLight
            Spacer()
            Button(action: {self.changeLight()}) {
                
                Text("\(buttonName)")
                    .font(.title)
                    .padding(.bottom, 9)
                    .frame(width: 200, height: 50, alignment: .bottom)
                    .background(Color.blue)
                    .foregroundColor(.black)
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
