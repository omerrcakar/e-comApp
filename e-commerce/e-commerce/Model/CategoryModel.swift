//
//  CategoryModel.swift
//  e-commerce
//
//  Created by ÖMER  on 22.01.2025.
//

import Foundation

struct Category : Codable, Identifiable{
    let id: Int
    let name: String
    let image: String
}
