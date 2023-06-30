//
//  ActivitiesUI.swift
//  Testwithgroup
//
//  Created by Jude Shorbaji on 6/29/23.
//

import SwiftUI
func checkWeather(Temp:Int)->String{
    var Wcheck = ""
    if Temp<45{
     Wcheck="Cold"
    }
    else if Temp>=45 && Temp<75{
      Wcheck="Medium"
    }
    else{
    Wcheck="Hot"
    }
    return Wcheck
}

struct ActivitiesUI: View {
    var ActivityNameONE=["Beach","Hike","Movie Night"]
    var ActivityDescriptionONE=["Suns Out Funs Out","Its great weather to get outside and up close and personal with mother nature", "Its reaaaaally cold out but im sure its cozy on the couch with a bunch of friends and some popcorn!"]
    var ActivityNameTWO=["Paddleboarding","picnic","Arts and Crafts"]
    var ActivityDescriptionTWO=["Todays a good day to be close to the water","Grab your closest friends and some cheese! today we're going outside!","Lets Get Creative!"]
    var ActivityNameTHREE=["Drive in","IDK WHAT TO PUT HERE","Bake"]
    var ActivityDescriptionTHREE=["out door movie theaters are so cool!","IDKMAN","nothing better than freshly baked treats when its cold outside!"]
    var Weather=checkWeather(Temp:CurrentWeather)
    var body: some View {
        ZStack{
            Rectangle()
                .foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294))
            VStack(alignment: .center){
                if Weather=="Hot"{
                    ZStack{
                        RoundedRectangle(cornerRadius: 35)
                            .frame(width: 300.0, height: 200.0)
                            .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                        VStack{
                            Text(ActivityNameONE[0])
                                .font(.title)
                                .foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294))
                                .multilineTextAlignment(.center)
                            Text(ActivityDescriptionONE[0]).font(.headline).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                        }
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 35)
                            .frame(width: 300.0, height: 200.0)
                            .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                        VStack{
                            Text(ActivityNameTWO[0]).font(.title).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                            Text(ActivityDescriptionTWO[0]).font(.headline).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                        }
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 35)
                            .frame(width: 300.0, height: 200.0)
                            .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                        VStack{
                            Text(ActivityNameTHREE[0]).font(.title).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                            Text(ActivityDescriptionTHREE[0]).font(.headline).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                        }
                    }
                }
                else if Weather=="Medium"{
                    ZStack{
                        RoundedRectangle(cornerRadius: 35)
                            .frame(width: 300.0, height: 200.0)
                            .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                        VStack{
                            Text(ActivityNameONE[1])
                                .font(.title)
                                .foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294))
                                .multilineTextAlignment(.center)
                            Text(ActivityDescriptionONE[1]).font(.headline).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                        }
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 35)
                            .frame(width: 300.0, height: 200.0)
                            .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                        VStack{
                            Text(ActivityNameTWO[1]).font(.title).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                            Text(ActivityDescriptionTWO[1]).font(.headline).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                        }
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 35)
                            .frame(width: 300.0, height: 200.0)
                            .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                        VStack{
                            Text(ActivityNameTHREE[1]).font(.title).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                            Text(ActivityDescriptionTHREE[1]).font(.headline).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                        }
                    }
                }
                else if Weather == "Cold"{
                    ZStack{
                        RoundedRectangle(cornerRadius: 35)
                            .frame(width: 300.0, height: 200.0)
                            .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                        VStack{
                            Text(ActivityNameONE[2])
                                .font(.title)
                                .foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294))
                                .multilineTextAlignment(.center)
                            Text(ActivityDescriptionONE[2]).font(.headline).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                        }
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 35)
                            .frame(width: 300.0, height: 200.0)
                            .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                        VStack{
                            Text(ActivityNameTWO[2]).font(.title).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                            Text(ActivityDescriptionTWO[2]).font(.headline).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                        }
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 35)
                            .frame(width: 300.0, height: 200.0)
                            .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                        VStack{
                            Text(ActivityNameTHREE[2]).font(.title).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                            Text(ActivityDescriptionTHREE[2]).font(.headline).foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294)).multilineTextAlignment(.center)
                        }
                    }
                }
            }
            .frame(width: 300.0)
        }
    }
    }
    
    struct ActivitiesUI_Previews: PreviewProvider {
        static var previews: some View {
            ActivitiesUI()
        }
    }

