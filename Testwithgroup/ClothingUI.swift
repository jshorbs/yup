//
//  ClothingUI.swift
//  Testwithgroup
//
//  Created by Jude Shorbaji on 6/29/23.
//

import SwiftUI
func checkWeather(Weather:Int)->Int{
    var Indicator = 0
    if Weather<45{
    Indicator=0
    }
    else if Weather>=45 && Weather<75{
      Indicator=1
    }
    else{
        Indicator=2
    }
    return Indicator
}
public var CurrentWeather=73
struct ClothingUI: View {
    
    @State private var clothingtype=""
    //recomendation array
    @State private var Hats=["Its a little chilly out! A beanie, or earmuffs would probably help keep your ears warm","Nice weather today! you could play it safe with a baseball cap or maybe if youre feeling spicy you can try a bucket hat!","It's really hot! on top of sunscreen (that youre deffinitly wearing RIGHT?) you could wear a visor or one of those really big beach hats"]
    
    @State private var Jackets=["it is CHILLLLYYYYY. I definitly recomend a puffer jacket or something along those lines","Good adventuring weather today! You can stay active in a light windbreaker or throw on a leather jacket and rock out today","A jacket? In hot weather? Maybe you can put an unbuttoned button-up shirt over whatever outfit youre wearing to get that elevated jacket look."]
    
    @State private var Tops=["I would definitly opt for a longsleave or sweater today. It looks cold out","wear whatever top makes YOU comfortable. Might I suggest a t-shirt?","its tanktop weather! but if youre looking for a more modest look, I recomend light colors and fabrics! No over heating today 🙅‍♂️"]
    @State private var Bottoms=["Pants are deffinitly in fasion today! People who wear skirts in the cold are scary, but if you do wear one, tights are a MUST.","Jeans might be uncomfortable for today, maybe you should opt for flowy looser pants or a cool hipie skirt instead!","wear whatever youre ok sweating in today, i think you'll see a lot of shorts and skirts outside"]
    @State private var Shoes=["Winter boots are INN, Uggs, docs, timberlanes, you name it, if theyre nice and warm theyre totally in style","Sneakers will get you anywhere today, the weathers nice so you could definitly take a little stroll","nobody likes sweaty socks, maybe throw on some crocs, slides, or sandals."]
    
    //sorting through arrays
    var WIndicator=checkWeather(Weather:CurrentWeather)
    
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294))
            
            
            VStack(alignment: .center){
                ZStack{
                    RoundedRectangle(cornerRadius: 35)
                        .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                    if clothingtype=="hat"{
                        Text(Hats[WIndicator])
                            .font(.headline)
                            .foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294))
                            .multilineTextAlignment(.center)
                        
                    }
                    
                    else if clothingtype=="jacket"{
                        Text(Jackets[WIndicator])
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294))
                    }
                    
                    else if clothingtype=="top"{
                        Text(Tops[WIndicator])
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294))
                    }
                    
                    else if clothingtype=="bottom"{
                        Text(Bottoms[WIndicator])
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294))
                    }
                    
                    else if clothingtype=="shoes"{
                        Text(Shoes[WIndicator])
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294))
                    }
                    
                }
                .frame(width: 300.0, height: 300.0)
                HStack{
                    
                    Button("Hat") {
                        clothingtype="hat"
                    }
                    .buttonStyle(.borderedProminent)
                    .accentColor(Color(red: 0.023529411764705882, green: 0.7372549019607844, blue: 0.7568627450980392))
                    
                    Button("Jacket") {
                        clothingtype="jacket"
                    }
                    .buttonStyle(.borderedProminent)
                    .accentColor(Color(red: 0.023529411764705882, green: 0.7372549019607844, blue: 0.7568627450980392))
                    Button("Top") {
                        clothingtype="top"
                    }
                    .buttonStyle(.borderedProminent)
                    .accentColor(Color(red: 0.023529411764705882, green: 0.7372549019607844, blue: 0.7568627450980392))
                    Button("Bottom") {
                        clothingtype="bottom"
                    }
                    .buttonStyle(.borderedProminent)
                    .accentColor(Color(red: 0.023529411764705882, green: 0.7372549019607844, blue: 0.7568627450980392))
                    Button("Shoes") {
                        clothingtype="shoes"
                    }
                    .buttonStyle(.borderedProminent)
                    .accentColor(Color(red: 0.023529411764705882, green: 0.7372549019607844, blue: 0.7568627450980392))
                    
                }
            }
            
            
        }
    }
}

            
        
        
      


struct ClothingUI_Previews: PreviewProvider {
    static var previews: some View {
        ClothingUI()
    }
}
