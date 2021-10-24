//
//  Messager.swift
//  Caravan
//
//  Created by Srikar  Balusu on 10/23/21.
//

import Foundation
import SwiftUI

struct Messager: Hashable, Codable, Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

var message = [
    Messager(name: "Vlad Smirnoff", image: "vlad_image"),
    Messager(name: "Vikas Patel", image: "vikas_Image"),
    Messager(name: "Karen Daniels", image: "karen_image")
]

