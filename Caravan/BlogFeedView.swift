//
//  BlogFeedView.swift
//  Caravan
//
//  Created by Srikar  Balusu on 10/24/21.
//

import SwiftUI
 
struct BlogFeedView: View {
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
            BlogCardView(image: "liz_hawaiiblog", date: "10/21", title: "My Hawaiian Paradise Getaway!", author: "Liz Mitchell")
            BlogCardView(image: "andrew_dcblog", date: "10/2", title: "The Heart of our Nation.", author: "Andrew McMillian")
                BlogCardView(image: "paul_yosemiteblog", date: "9/27", title: "My top 5 road trips.", author: "Paul Darnell")}
        }
        }
    
    }

 
struct BlogFeedView_Previews: PreviewProvider {
    static var previews: some View {
        BlogFeedView()
    }
}

