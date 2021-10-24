//
//  CountryPageView.swift
//  Caravan
//
//  Created by Srikar  Balusu on 10/23/21.
//

import SwiftUI
 
struct CountryPageView: View {
    var body: some View {
        Text("Upcoming Trips").font(.custom("Helvetica", size: 30)).bold().padding(.horizontal, 10).foregroundColor(.black).frame(maxWidth: .infinity, alignment: .leading).offset(y:-25)
        ScrollView(.vertical, showsIndicators: false) {
            NavigationLink(destination: DetailedTripView()) {
                CardView(image: "chinese_new_year", date: "Jan 30th - Feb. 4th", trip_name: "Chinese New Year Festival Trip 2022", trip_organizer: "Simon Zhong", travellers: "32")
            }
            NavigationLink(destination: DetailedTripView()) {
            CardView(image: "great-wall_2", date: "March 18th - March 23rd, 2022", trip_name: "Chinese Architecture Series 2022", trip_organizer:
                        "Zach Ferguson", travellers: "14")
            }
            NavigationLink(destination: DetailedTripView()) {
            CardView(image: "china_mountains", date: "May 2nd - May 20th, 2022", trip_name: "Chinese Hiking Expedition 2022", trip_organizer:
                        "Andrew Liu", travellers: "22")
            }
        }
        Spacer()
    }
}
 
struct CountryPageView_Previews: PreviewProvider {
    static var previews: some View {
        CountryPageView()
    }
}
