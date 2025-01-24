//
//  TopPartDetailView.swift
//  e-commerce
//
//  Created by ÖMER  on 23.01.2025.
//

import SwiftUI

struct TopPartDetailView: View {
    
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack(alignment: .center, spacing: 6){
            VStack(alignment: .leading, spacing: 6){
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.35, anchor: .leading)
            }
            .offset(y: isAnimating ? -50 : -75)
            
            Spacer()
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        }
    }
}

#Preview {
    TopPartDetailView()
        .environmentObject(Shop())
}
