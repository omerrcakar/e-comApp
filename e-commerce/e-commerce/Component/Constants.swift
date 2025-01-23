//
//  Constants.swift
//  e-commerce
//
//  Created by ÖMER  on 22.01.2025.
//

import SwiftUI

// DATA

let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")
let sampleProduct: Product = products[0]
// COLOR

let colorBackgound: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

// LAYOUT

let columnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}
// UX
// API
// IMAGE
// FONT
// STRING

// Notch : çentik altında kalmasını sağladı , top padding
// Cihazın üst kısmındaki güvenli alanın yüksekliğini döner (genellikle durum çubuğu veya çentik için).
func getSafeAreaTopInset() -> CGFloat {
    guard let window = UIApplication.shared.connectedScenes
        .compactMap({ $0 as? UIWindowScene })
        .flatMap({ $0.windows })
        .first(where: { $0.isKeyWindow }) else {
        return 0
    }
    return window.safeAreaInsets.top
}
