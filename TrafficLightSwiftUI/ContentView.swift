//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Oxyenniu on 11.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    var redLight = LightView(opacity: 0.3, color: .red)
    var orangeLight = LightView(opacity: 0.3, color: .orange)
    var greenLight = LightView(opacity: 0.3, color: .green)
    enum CurrentLight {
        case red, yellow, green
    }
    var body: some View {
        ZStack {
            Color.black
            
                .ignoresSafeArea()
            AllLightsView()
                .padding(.top, -350)
            
            
            Button(action: startButtonTapped) {
                if redLight.opacity == 1 || orangeLight.opacity == 1 || greenLight.opacity == 1 { Text("Next")
                } else {
                    Text("START")
                }
            }
                .frame(width: 120, height: 30)
                .background(Color.blue)
                .cornerRadius(10)
                .bold()
                .font(.title)
                .foregroundColor(.white)
            
            .padding(.top, 750)
        }
    }
    
    private func startButtonTapped() {
        
        switch currentLight {
        case .red:
            greenLight.opacity = 0.3
            redLight.opacity = 1
            currentLight = .yellow
        case .yellow:
            redLight.opacity = 0.3
            orangeLight.opacity = 1
            currentLight = .green
        case .green:
            greenLight.opacity = 1
            orangeLight.opacity = 0.3
            currentLight = .red
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
