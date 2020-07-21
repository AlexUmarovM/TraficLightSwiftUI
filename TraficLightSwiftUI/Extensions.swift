//
//  Extensions.swift
//  TraficLightSwiftUI
//
//  Created by Александр Умаров on 21.07.2020.
//  Copyright © 2020 Александр Умаров. All rights reserved.
//


extension ContentView {
 func changeLight() {
        buttonName = "NEXT"
        
        switch  glowingLight {
            
        case nil:
            greenLight.alpha = lightOff
            redLight.alpha = lightOn
            glowingLight = yellowLight
            
        case yellowLight:
            redLight.alpha = lightOff
            yellowLight.alpha = lightOn
            glowingLight = greenLight
            
        case greenLight:
            yellowLight.alpha = lightOff
            greenLight.alpha = lightOn
            glowingLight = nil
            
        default:
            break
            
        }
    }
}
