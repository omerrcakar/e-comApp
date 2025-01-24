//
//  ProductDetailView.swift
//  e-commerce
//
//  Created by ÖMER  on 23.01.2025.
//

import SwiftUI

struct ProductDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            
            // NAVBAR
            NavigationBarDetailView()
                .padding(.horizontal)
                .padding(.top, getSafeAreaTopInset())
            
            // HEADER
            HeaderDetailView()
                .padding(.horizontal)
            
            // Detail Top
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1)
            
            // Detail Bottom
            VStack(alignment: .center, spacing: 0){
                // Rating
                RatingSizeDetailView()
                    .padding(.top)
                    .padding(.bottom, 10)
                
                // desc
                ScrollView(.vertical){
                    Text(shop.selectedProduct?.description ?? sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                }
                
                // quantty fav
                FavoriteView()
                    .padding(.vertical, 10)
                
                
                AddToCartView()
                    .padding(.bottom)
            }
            .padding(.horizontal)
            .background(
                Color.white
                    .clipShape(CustomShape())
                    .padding(.top, -105)
            )
        }
        .zIndex(0)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.green ?? sampleProduct.green,
                blue: shop.selectedProduct?.blue ?? sampleProduct.blue)
        )
        .ignoresSafeArea(.all, edges: .all)
        
    }
}

#Preview {
    ProductDetailView()
        .environmentObject(Shop())
}
