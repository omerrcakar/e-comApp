//
//  AddToCartView.swift
//  e-commerce
//
//  Created by ÖMER  on 23.01.2025.
//

import SwiftUI

struct AddToCartView: View {
    
    @EnvironmentObject var shop: Shop
    var body: some View {
        Button{
            feedback.impactOccurred()
        }label: {
            Spacer()
            
            Text("Add to cart".uppercased())
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        }
        .padding()
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartView()
        .environmentObject(Shop())
}
