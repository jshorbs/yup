//
//  WeatherUI.swift
//  Testwithgroup
//
//  Created by Scholar on 6/30/23.
//

import SwiftUI

struct WeatherUI: View {
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: /*@START_MENU_TOKEN@*/500.0, height: 999.0/*@END_MENU_TOKEN@*/)
                .foregroundColor(Color(red: 0.957, green: 0.928, blue: 0.917))
            Rectangle()
                .frame(width: 350.0, height: 650.0)
                .foregroundColor(Color(hue: 0.583, saturation: 0.688, brightness: 0.232))
                .cornerRadius(30)
//            Image("sunny")
//                .frame(width:30)
                
            VStack {
                // temp
                Text("81°F")
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)

                // description
                Text("Warm & Sunny")
                    .font(.body)
                    .multilineTextAlignment(.center)
                
//                Spacer()
                
                
                VStack(alignment: .leading) {
                    // City
                    Text("Hillsdale")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding(5.0)
                    
                    // Feels Like
                    Text("Feels Like: 90°F")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding(5.0)
                    
                    // Humidity
                    Text("Humidity: 54")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding(5.0)
                    
                    // Windspeed
                    Text("Windspeed: 3")
                        .font(.body)
                        .multilineTextAlignment(.leading)
                        .padding(5.0)
                }
                .padding(20.0)
                .frame(maxWidth: 300, alignment: .leading)
                
                
            }
            

                
        }
        .frame(width: 8.0)
            .foregroundColor(Color(red: 0.957, green: 0.928, blue: 0.917))
        }
        
    }


struct WeatherUI_Previews: PreviewProvider {
    static var previews: some View {
        WeatherUI()
    }
}
