//
//  ContentView.swift
//  e-commerce
//
//  Created by ÖMER  on 22.01.2025.
//

import SwiftUI
import UIKit






struct ContentView: View {
    
    // MARK: - PROPERTIES
    @EnvironmentObject var shop: Shop
    // now we can accsess the showing produc and selected product
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    NavigationBarView()
                        .padding(.horizontal, 15)
                        .padding(.bottom)
                        .padding(.top, getSafeAreaTopInset())
                        .background(.white)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                    
                    
                    ScrollView(.vertical, showsIndicators: false) {
                        VStack(spacing: 0){
                            FeaturedTabView()
                                .frame(height: UIScreen.main.bounds.width / 1.475)
                            
                            CategoryGridView()
                            
                            TitleComponent(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15){
                                ForEach(products){ product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut){
                                                shop.selectedProduct = product
                                                shop.showingProduct = true
                                            }
                                        }
                                }
                            }
                            .padding()
                            
                            TitleComponent(title: "Brands")
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                        
                    }//: SCROLL
                    
                }//: VSTACK
                .background(colorBackgound.ignoresSafeArea(.all, edges: .all))
            } else {
                ProductDetailView()
            }
        }//: ZSTACK
        .ignoresSafeArea(.all, edges: .top)
        
    }
    
    
    
}

#Preview {
    ContentView()
        .environmentObject(Shop())
}
