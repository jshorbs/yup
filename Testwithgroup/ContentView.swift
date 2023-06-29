//
//  ContentView.swift
//  Testwithgroup
//
//  Created by Jude Shorbaji on 6/27/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            
            VStack {
                NavigationLink(destination: SuggestionMainPage()) {
                    Text("Suggestions")
                }
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
