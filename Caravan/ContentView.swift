//
//  ContentView.swift
//  Caravan
//
//  Created by Bowen Tan on 10/22/21.
//

import SwiftUI



struct ContentView: View {
    @State var text = ""
    var body: some View {
            
        TabView {
            HomeView(text: text).tabItem{Label("Explore",systemImage:"globe.americas.fill")}
            ProfileView().tabItem{Label("Profile", systemImage: "person")}
            MessageView().tabItem{Label("Messages", systemImage: "message.fill")}
            BlogFeedView().tabItem{Label("Campsite", systemImage: "person.2.wave.2.fill")}
        }.accentColor(.yellow)
        
            }
        }
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 13")
        }
    }
}


