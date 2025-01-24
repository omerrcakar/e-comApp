//
//  NagigationBarDetailView.swift
//  e-commerce
//
//  Created by ÖMER  on 23.01.2025.
//

import SwiftUI

struct NavigationBarDetailView: View {
    
    @EnvironmentObject var shop: Shop
    
    var body: some View {
        HStack{
            Button{
                withAnimation(.easeIn){
                    feedback.impactOccurred()
                    shop.selectedProduct = nil
                    shop.showingProduct = false
                }
            }label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            
            Spacer()
            
            Button{
                
            }label: {
                Image(systemName: "cart")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    NavigationBarDetailView()
        .environmentObject(Shop())
        .padding()
        .background(.gray)
}
