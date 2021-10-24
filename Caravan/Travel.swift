//
//  Travel.swift
//  Caravan
//
//  Created by Srikar  Balusu on 10/23/21.
//

import UIKit

struct Travel: Identifiable {
    var id = UUID()
    var destination: String
    var image: String
}

var international_travels = [
    Travel(destination: "Paris", image: "Paris_Image"),
    Travel(destination: "China", image: "China_Image"),
    Travel(destination: "Tokyo", image: "Tokyo_Image"),
    Travel(destination: "Greece", image: "Greece_Image")
]

var usa_travels = [
    Travel(destination: "Hawaii", image: "Hawaii_Image"),
    Travel(destination: "Las Vegas", image: "Casino_Image"),
    Travel(destination: "Yosemite", image: "Yosemite_Image"),
    Travel(destination: "Washington D.C", image: "dc_Image2")
]

var mytrips_travels = [
    Travel(destination: "Paris", image: "paris_image_2"),
    Travel(destination: "Paris", image: "paris_image_3"),
    Travel(destination: "Paris", image: "paris_image_4")
]



