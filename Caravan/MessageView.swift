//
//  MessageView.swift
//  Caravan
//
//  Created by Srikar  Balusu on 10/23/21.
//


import SwiftUI

struct MessageView: View {
        var body: some View {
        VStack {
            HStack {
           Text("My Messages").font(.custom("Helvetica", size: 25)).bold().padding(15).foregroundColor(.black).frame(maxWidth: .infinity, alignment: .leading)
                Image(systemName: "plus.message.fill").font(.system(size: 30)).foregroundColor(.yellow).frame(width: 100, height: 25, alignment: .center)
            }

        List(message){ Messager in
            HStack {
            MessageRow(messager: Messager)
                
            }
        }
            Image(systemName: "exclamationmark.bubble.circle").font(.system(size: 30)).foregroundColor(.red).frame(width: 100, height: 25, alignment: .center).offset(x:150, y:-570)
            
        }
    
    }
}

