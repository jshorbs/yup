//
//  SuggestionMainPage.swift
//  Testwithgroup
//
//  Created by Jude Shorbaji on 6/29/23.
//

import SwiftUI

struct SuggestionMainPage: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Rectangle()
                    .foregroundColor(Color(red: 0.9568627450980393, green: 0.9294117647058824, blue: 0.9176470588235294))
                    .frame(width: /*@START_MENU_TOKEN@*/500.0, height: 999.0/*@END_MENU_TOKEN@*/)
                VStack {
                    
                        NavigationLink(destination: ClothingUI()) {
                            ZStack{ RoundedRectangle(cornerRadius: 35)
                                .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                            Text("Clothing recomendations of the day ")
                                .font(.title2)
                                .foregroundColor(Color(red: 0.023529411764705882, green: 0.7372549019607844, blue: 0.7568627450980392))
                        }
                    }
                    .padding(.bottom, 20.0)
                    .frame(width: 300.0, height: 200.0)
                    
                        
                        NavigationLink(destination: ActivitiesUI()) {
                            ZStack{
                                RoundedRectangle(cornerRadius: 35)
                                    .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                                Text("Activity recomendations for the day ")
                                    .font(.title2)
                                    .foregroundColor(Color(red: 0.023529411764705882, green: 0.7372549019607844, blue: 0.7568627450980392))
                            }
                    }
                    .padding(.top, 20.0)
                    .frame(width: 300.0, height: 200.0)
                }
                .padding()
            }
        }
        
    }
}

struct SuggestionMainPage_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionMainPage()
    }
}
