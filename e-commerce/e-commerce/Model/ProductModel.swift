//
//  ProductModel.swift
//  e-commerce
//
//  Created by ÖMER  on 23.01.2025.
//

import Foundation

struct Product: Codable, Identifiable{
    var id : Int
    var name : String
    var image : String
    var price: Int
    var description: String
    var color: [Double]
    
    var red: Double{ return color[0] }
    var green: Double{ return color[1] }
    var blue: Double{ return color[2] }
    
    var formattedPrice: String{ return "₺\(price)" }
}
