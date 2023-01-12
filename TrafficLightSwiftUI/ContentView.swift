//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Oxyenniu on 11.01.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    @State var opacityRed = 0.3
    @State var opacityYellow = 0.3
    @State var opacityGreen = 0.3
    enum CurrentLight {
        case red, yellow, green
    }
    var body: some View {
        ZStack {
            Color.black
            
                .ignoresSafeArea()
            VStack {
                LightView(opacity: opacityRed, color: .red)
                LightView(opacity: opacityYellow, color: .orange)
                LightView(opacity: opacityGreen, color: .green)
            }
            .padding(.top, -350)
            
            
            Button(action: startButtonTapped) {
                if opacityRed == 1 || opacityYellow == 1 || opacityGreen == 1 { Text("Next")
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
            opacityGreen = 0.3
            opacityRed = 1
            currentLight = .yellow
        case .yellow:
            opacityRed = 0.3
            opacityYellow = 1
            currentLight = .green
        case .green:
            opacityGreen = 1
            opacityYellow = 0.3
            currentLight = .red
            
        }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
