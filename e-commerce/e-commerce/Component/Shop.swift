//
//  Shop.swift
//  e-commerce
//
//  Created by ÖMER  on 24.01.2025.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product?
}
