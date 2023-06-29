//
//  ClothingUI.swift
//  Testwithgroup
//
//  Created by Jude Shorbaji on 6/29/23.
//

import SwiftUI

struct ClothingUI: View {
    
    @State private var clothingtype=""
    //recomendation array
    @State private var Hats=["cold weather option","medium weather option","hot weather option"]
    @State private var Jackets=["cold weather option","medium weather option","hot weather option"]
    @State private var Tops=["cold weather option","medium weather option","hot weather option"]
    @State private var Bottoms=["cold weather option","medium weather option","hot weather option"]
    @State private var Shoes=["cold weather option","medium weather option","hot weather option"]
    
    //sorting through arrays
    @State private var CurrentWeatherIndicator=2
    @State private var CurrentWeather=73
    
    var body: some View {
       
            VStack(alignment: .center){
                if clothingtype=="hat"{
                    Text(Hats[CurrentWeatherIndicator])
                }
                
                else if clothingtype=="jacket"{
                    Text(Jackets[CurrentWeatherIndicator])
                }
                
                else if clothingtype=="top"{
                    Text(Tops[CurrentWeatherIndicator])
                }
                
                else if clothingtype=="bottom"{
                    Text(Bottoms[CurrentWeatherIndicator])
                    
                }
                
                else if clothingtype=="shoes"{
                    Text(Shoes[CurrentWeatherIndicator])
                }
                
                
                HStack{
                    Button("Hat") {
                        clothingtype="hat"
                    }
                    Button("Jacket") {
                        clothingtype="jacket"
                    }
                    Button("Top") {
                        clothingtype="top"
                    }
                    Button("Bottom") {
                        clothingtype="jacket"
                    }
                    Button("Shoes") {
                        clothingtype="shoes"
                    }
                    
                }
            }
            .frame(width: 300)
            
            }
             
                   

            
        }
        
      


struct ClothingUI_Previews: PreviewProvider {
    static var previews: some View {
        ClothingUI()
    }
}
