//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Oxyenniu on 11.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State var buttonTitle: String = "START"
    private var currentLight = CurrentLight.red
    var redLight = LightView(color: .red)
    var orangeLight = LightView(color: .orange)
    var greenLight = LightView(color: .green)
    var body: some View {
        ZStack {
            Color.black
            
                .ignoresSafeArea()
            AllLightsView()
                .padding(.top, -350)
            
            
            Button(action: startButtonTapped) {
                Text(buttonTitle)
                    .frame(width: 150, height: 30)
                    .background(Color.blue)
                    .cornerRadius(10)
                    .bold()
                    .font(.title)
                    .foregroundColor(.white)
            }
            .padding(.top, 750)
        }
        
    }
    enum CurrentLight {
        case red, yellow, green
    }
    private mutating func startButtonTapped() {
        if redLight.opacity == 1 || orangeLight.opacity == 1 || greenLight.opacity == 1 { Text("Next")
        } else {
            Text("START")
        }
        
        switch currentLight {
        case .red:
            greenLight = opacity(0.3) as! LightView
            redLight = opacity(1) as! LightView
            currentLight = .yellow
        case .yellow:
            redLight = opacity(0.3) as! LightView
            orangeLight = opacity(1) as! LightView
            currentLight = .green
        case .green:
            greenLight = opacity(1) as! LightView
            orangeLight = opacity(0.3) as! LightView
            currentLight = .red
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
