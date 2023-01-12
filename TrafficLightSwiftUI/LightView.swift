//
//  RedLight.swift
//  TrafficLightSwiftUI
//
//  Created by Oxyenniu on 11.01.2023.
//

import SwiftUI

struct LightView: View {
    var opacity = 0.3
    let color: Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 5))
            .shadow(radius: 8)
            .opacity(opacity)
    }
}

struct LightView_Previews: PreviewProvider {
    static var previews: some View {
        LightView(color: .red)
    }
}
