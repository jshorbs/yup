//
//  ContentView.swift
//  Testwithgroup
//
//  Created by Jude Shorbaji on 6/27/23.
//

import SwiftUI

struct ContentView: View {
  @State private var fact = ""
  @State private var pun = ""
  @State private var personName = ""
  @State private var showGreeting = false
  let environmentalFacts = [
    "Did you know that trees help to reduce air pollution by absorbing carbon dioxide?",
    "Over 8 million tons of plastic enter the oceans every year, harming marine life",
    "Recycling one aluminum can saves enough energy to run a TV for three hours",
    "Producing a single hamburger requires the equivalent of 2,400 liters of water",
    "Approximately one-third of all food produced globally is wasted",
    "Using public transportation instead of a car reduces carbon dioxide emissions ban average of 20 pounds per day"
  ]
  let weatherPuns = [
    "I tried to catch some fog, but I mist",
    "I received a message from the sun, it was enlightening",
    "Did you hear of the story of the tornado? There is a twist at the end!",
    "What falls but never hits the ground? The temperature",
    "Local weather reports state there won't be any rain for 1 year, but I drought it",
    "What did one raindrop say to the other? Two's company, three's a cloud",
    "How does a spy avoid the rain? He goes undercover"
  ]
    var body: some View {
        NavigationStack {
            ZStack {
                // hi
                Rectangle()
                    .foregroundColor(Color(hue: 0.586, saturation: 0.581, brightness: 0.969))
                    .edgesIgnoringSafeArea(.trailing)
                    .frame(width: 700.0, height: 900.0)
                VStack {
                    Text("flurry 🌥️")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .multilineTextAlignment(.center)
                        .padding(.trailing)
                    
                    Button(action: {
                        let randomIndex = Int.random(in: 0..<environmentalFacts.count)
                        fact = environmentalFacts[randomIndex]
                    }) {
                        Text("Environmental Fact")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(hue: 0.522, saturation: 0.101, brightness: 0.651))
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 20)
                    Text(fact)
                        .foregroundColor(.white)
                        .font(.headline)
                    Button(action: {
                        let randomIndex = Int.random(in: 0..<weatherPuns.count)
                        pun = weatherPuns[randomIndex]
                    }) {
                        Text("Pun Of The Day")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding()
                            .background(Color(hue: 0.522, saturation: 0.101, brightness: 0.651))
                            .cornerRadius(10)
                    }
                    .padding(.bottom, 20)
                    Text(pun)
                        .foregroundColor(.white)
                        .font(.headline)
                        .padding(.bottom, 20)
                    
                    VStack(spacing: 7) {
                        NavigationLink(destination: WeatherUI()) {
                            Text("Today's Weather")
                                .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                                .font(.headline)
                            
                        }
                        NavigationLink(destination: SuggestionMainPage()) {
                            Text("Activities and Outfits for Today")
                                .foregroundColor(Color(red: 0.07058823529411765, green: 0.14901960784313725, blue: 0.22745098039215686))
                                .font(.headline)
                        }
                    }
                }
                .frame(maxWidth: 300)
            }
        }
    }
  }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
