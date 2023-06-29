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
            VStack {
                NavigationLink(destination: ClothingUI()) {
                    Text("Clothing recomendations of the day ")
                }
                NavigationLink(destination: ActivitiesUI()) {
                    Text("Activity recomendations for the day ")
                }
            }
            .padding()
        }
    }
}

struct SuggestionMainPage_Previews: PreviewProvider {
    static var previews: some View {
        SuggestionMainPage()
    }
}
