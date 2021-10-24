//
//  ProfileView.swift
//  Caravan
//
//  Created by Srikar  Balusu on 10/23/21.
//

import SwiftUI


struct ProfileView: View {
    var body: some View {
        VStack {
            HStack {
            Text("My Profile").font(.custom("Helvetica", size: 25)).bold().padding(15).foregroundColor(.black).frame(maxWidth: .infinity, alignment: .leading)
                Image(systemName: "gearshape.fill").font(.system(size: 35)).foregroundColor(.yellow).frame(width: 100, height: 25, alignment: .center)
            }
            ScrollView {
                Spacer()
        Image("profile_image").resizable().frame(width:250, height:200).clipShape(Circle())
                    .overlay(Circle().stroke(Color.yellow, lineWidth: 8))
                
            Text("John Smith").font(.custom("Helvetica", size: 25)).bold().padding(5).foregroundColor(.black).frame(maxWidth: .infinity, alignment: .center)
            Text("27").font(.custom("Helvetica", size: 25)).bold().foregroundColor(.black).frame(maxWidth: .infinity, alignment: .center)
                Divider().background(Color.blue)
                Text("Bio: ").font(.custom("Helvetica", size: 20)).bold()
                    .foregroundColor(.primary).padding(15).frame(maxWidth: .infinity, alignment: .leading)
                Text("Hi, My name is John and I'm 27. I love meeting new people, going on exciting adventures, and having fun.").font(.system(size: 15)).foregroundColor(.primary).padding(15).frame(maxWidth: .infinity, alignment: .leading).offset(x:0, y: -30)
                Divider().background(Color.blue).offset(y:-30)
                VStack{
                    Text("My Trips: ").font(.custom("Helvetica", size: 20)).bold().foregroundColor(.primary).padding(15).frame(maxWidth: .infinity, alignment: .leading).offset(y:-30)
                        VStack {
                    Text("Paris Arts Trip 2019").font(.system(size:15)).bold().foregroundColor(.primary).padding(10).offset(x: -100,y:-40)
                            
                    }
                    Divider().background(Color.blue).offset(y:-30)
                    Text("My Badges: ").font(.custom("Helvetica", size: 20)).bold().offset(x:-125, y:0).offset(y:-30)
                    /*HStack{
                        Image(systemName: "globe").font(.system(size: 20)).offset(y:-30)
                        Spacer()
                        Text("Go International").font(.system(size:20)).offset(y:-30)
                    }*/
                    VStack (spacing: 30){
                        Label(title: {Text("  Go International")}, icon: {Image(systemName: "globe").foregroundColor(.yellow)}).font(.system(size:20)).padding(10).overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.init(red: 36/255, green: 76/255, blue: 113/255), lineWidth: 4)).padding(5).frame(width: 375, height: 25, alignment:.topLeading).offset(y:-40)
                        Label(title: {Text("  Eat Food in a New Place")}, icon: {Image(systemName: "fork.knife.circle").foregroundColor(.yellow)}).font(.system(size:20)).padding(10).overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.blue, lineWidth: 4))
                            .padding(5)
                            .frame(width: 375, height: 25, alignment:.topLeading)
                            .offset(y:-40)
                        Label(title: {Text(" Take a Pic")}, icon: {Image(systemName: "camera").foregroundColor(.yellow)}).font(.system(size:20))
                            .padding(10)
                            .overlay(
                            RoundedRectangle(cornerRadius: 16)
                                .stroke(Color.red, lineWidth: 4))
                            .padding(5)
                            .frame(width: 375, height: 25, alignment:.topLeading)
                            .offset(y:-40)
                    }
                    Divider().background(Color.blue).offset(y:-10)
                    Text("My Photos: ").font(.system(size: 20)).bold().frame(width: 360, height:25,
                                                                            alignment: .leading).offset(y:-10)
                    ScrollView(.horizontal, showsIndicators: false)  {
                    HStack(spacing: 20){
                        ForEach(mytrips_travels){ Travel in
                            TravelRowView(trav: Travel)
                        }
                    
                }
                    }
                }
        }
        }
    }
}
