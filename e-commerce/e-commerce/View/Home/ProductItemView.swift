//
//  ProductItemView.swift
//  e-commerce
//
//  Created by ÖMER  on 23.01.2025.
//

import SwiftUI

struct ProductItemView: View {
    
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6){
            ZStack{
                Image(product.image)
                    .resizable()
                    .scaledToFit()
                    .padding()
            }
            .background(Color(red: product.red, green: product.green, blue: product.blue))
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Text(product.name)
                .font(.title3)
                .fontWeight(.black)
            
            Text(product.formattedPrice)
                .fontWeight(.semibold)
                .foregroundStyle(.gray)
        }
    }
}

#Preview(traits: .fixedLayout(width: 200, height: 300)) {
    ProductItemView(product: products[0])
        .padding()
        .background(colorBackgound)
    
}
