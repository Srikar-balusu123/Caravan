//
//  DetailedTripView.swift
//  Caravan
//
//  Created by Srikar  Balusu on 10/23/21.
//

import SwiftUI

struct DetailedTripView: View {
    @State var textName : String = "Sign Up!"
    var body: some View {
        //ScrollView(.vertical, showsIndicators: false) {
                //StickyHeader {
                    ZStack {
                        //Color(red: 35/255, green: 45/255, blue: 50/255)
                        VStack {
//                            StickyHeader {
//                                StickyHeader {
                                    Image("chinese_new_year")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .offset(y: 100)
                                        
//                                }
//                            }
                            Text("Chinese New Year \nFestival Trip 2022")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .multilineTextAlignment(.center)
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .offset(y: -50)
                            
                        //}
                    //}
                }
            
    }
        
        //ScrollView {
            VStack(alignment: .leading) {
                
                Group{
                            Text("Trip Guide")
                                .font(.system(size: 30, weight: .bold, design: .default))
                               .foregroundColor(.primary)
                               //.offset(y: 150)
                            Text("Overview")
                                .font(.title2)
                                .offset(y: -30)
                            Text("Celebrate the Chinese New Year! Experience their traditions on New Year's Eve as you write spring couplets, do crafts, and make dumplings. Partake in festivities in Luadai Ancient Town where performances and games take place to celebrate Spring Festival. Round out your journey with a visit to a street banquet, the Giant Panda Research Base, and the Wenshu Temple. Enjoy this festive week long journey through China!")
                                .font(.system(size: 15))
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .offset(y: -65)
                                //Divider()
                            //Text("")
                        Spacer()
                           Text("Scheduled Dates")
                               .font(.title2)
                               .offset(y: -135)
                           Text("January 30th to Febuary 4th, 2022")
                                .lineLimit(nil)
                                .fixedSize(horizontal: false, vertical: true)
                                .font(.system(size: 15))
                                .offset(y: -170)
                            //Text("")
                            Text("Trip Organizer")
                                .font(.title2)
                                .offset(y: -190)
                            Text("Simon Zhong")
                                .font(.system(size: 15))
                                .offset(y: -225)
                            //Text("")
                            Text("Average Rating")
                                .font(.title2)
                                .offset(y: -245)
                            Text("8.5 out of 10")
                                .font(.system(size: 15))
                                .offset(y: -278)
                       }
                       .padding()
            

                       Spacer()
                
            
        
        }
        
            
    
        
//        ScrollView(.vertical, showsIndicators: false) {
//
//            Text("")
//            Text("Major Stops")
//                .font(.title2)
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//
//            Text("China (Chinese: 中国; pinyin: Zhōngguó; lit. 'Central State; Middle Kingdom'), officially the People's Republic of China (Chinese: 中华人民共和国; pinyin: Zhōnghuá Rénmín Gònghéguó; abbr: PRC), is a country in East Asia. It is the world's most populous country, with a population of more than 1.4 billion. China follows a single standard time offset of UTC+08:00 even though it spans five geographical time zones and borders 14 countries, the second most of any country in the world after Russia.")
//                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .leading)
//
//
            //}
        Text(" ")
                .frame(width: 300, alignment: .leading)
                .position(x: 155, y: -250)
                .font(.system(size: 25, weight: .bold, design: .default))
        Text("")
        Button(action: {
            self.textName = "Signed Up!"
        }) {
            Text(textName).font(.system(size: 25, weight: .bold, design: .default))
                
        }.offset(y: -300)
            
        
}
    
    

struct DetailedTripView_Previews: PreviewProvider {
    static var previews: some View {
        DetailedTripView()
    }
}
    struct GrowingButton: ButtonStyle {
        func makeBody(configuration: Configuration) -> some View {
            configuration.label
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .scaleEffect(configuration.isPressed ? 1.2 : 1)
                .animation(.easeOut(duration: 0.2), value: configuration.isPressed)
        }
    }
//
//    struct StickyHeader<Content: View>: View {
//
//        var minHeight: CGFloat
//        var content: Content
//
//        init(minHeight: CGFloat = 200, @ViewBuilder content: () -> Content) {
//            self.minHeight = minHeight
//            self.content = content()
//        }
//
//        var body: some View {
//            GeometryReader { geo in
//                if(geo.frame(in: .global).minY <= 0) {
//                    content
//                        .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
//                } else {
//                    content
//                        .offset(y: -geo.frame(in: .global).minY)
//                        .frame(width: geo.size.width, height: geo.size.height + geo.frame(in: .global).minY)
//                }
//            }.frame(minHeight: minHeight+100)
//        }
//    }
}
