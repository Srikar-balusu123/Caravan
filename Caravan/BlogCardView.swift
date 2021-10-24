//
//  BlogCardView.swift
//  Caravan
//
//  Created by Srikar  Balusu on 10/24/21.
//

import SwiftUI


struct BlogCardView: View {
   var image: String
   var date: String
   var title: String
   var author: String
   var body: some View {
   
       VStack {
           Image(image)
               .resizable()
               .aspectRatio(contentMode: .fit)

           HStack {
               VStack(alignment: .leading) {
                   Text(date)
                       .font(.headline)
                       .foregroundColor(.secondary)
                   Text(title)
                       .font(.title)
                       .fontWeight(.black)
                       .foregroundColor(.primary)
                       .lineLimit(3)
                       //.offset(x: -20)
                   Text(author.uppercased())
                       .font(.caption)
                       .foregroundColor(.secondary)
               }
               .layoutPriority(100)
               Spacer()
           }
           .padding()
       }
       .cornerRadius(10)
       .overlay(
           RoundedRectangle(cornerRadius: 10)
               .stroke(Color(.sRGB, red: 255/255, green: 255/255, blue: 255/255, opacity: 0.1), lineWidth: 1)
       )
       .padding([.top, .horizontal])
   }
   
}

struct BlogCardView_Previews: PreviewProvider {
   static var previews: some View {
       BlogCardView(image: "liz_hawaiiblog", date: "9/27", title: "My Hawaiian Paradise Getaway!", author: "Liz Mitchell")
       
   }
}
