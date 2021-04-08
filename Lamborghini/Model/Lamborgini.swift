//
//  File.swift
//  Lamborghini
//
//  Created by bastien giat on 02/04/2021.
//

import SwiftUI

struct Lamborghini: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var releaseDate: String
    var price: Int
    var gallery: [String]
    
    var formattedPrice: String { return "\(price)€"}
}
