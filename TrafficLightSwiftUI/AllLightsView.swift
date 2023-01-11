//
//  AllLightsView.swift
//  TrafficLightSwiftUI
//
//  Created by Oxyenniu on 11.01.2023.
//

import SwiftUI

struct AllLightsView: View {
    
    var body: some View {
        VStack {
            LightView(color: .red)
            LightView(color: .orange)
            LightView(color: .green)
            
        }
        
    }
   
}

struct AllLightsView_Previews: PreviewProvider {
    static var previews: some View {
        AllLightsView()
    }
}
