//
//  SwiftUIView.swift
//  TraficLightSwiftUI
//
//  Created by Александр Умаров on 21.07.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//

import SwiftUI

struct TraficLight: View, Equatable {
    var redValue: CGFloat = 0.0
    var greenValue: CGFloat = 0.0
    var blueValue: CGFloat = 0.0
    var alpha: CGFloat = 0.5
    
    var body: some View {
       Color(UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: alpha))
        .frame(width: 100, height: 100)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.black, lineWidth: 1))
        .background(Color.clear)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        TraficLight()
    }
}
