//
//  MessageRow.swift
//  Caravan
//
//  Created by Srikar  Balusu on 10/23/21.
//

import SwiftUI

struct MessageRow: View {
    var messager: Messager
    var body: some View {
        HStack {
            Image(messager.image).resizable().frame(width: 50, height: 50).clipShape(Circle())
                .overlay(Circle().stroke(Color.yellow, lineWidth: 4))
            Text(messager.name)
            Spacer()
        }
    }
}
