//
//  AddToCartView.swift
//  e-commerce
//
//  Created by ÖMER  on 23.01.2025.
//

import SwiftUI

struct AddToCartView: View {
    var body: some View {
        Button{
            
        }label: {
            Spacer()
            
            Text("Add to cart".uppercased())
                .fontWeight(.bold)
                .foregroundStyle(.white)
            Spacer()
        }
        .padding()
        .background(
            Color(red: sampleProduct.red, green: sampleProduct.green, blue: sampleProduct.blue)
        )
        .clipShape(Capsule())
    }
}

#Preview {
    AddToCartView()
}
