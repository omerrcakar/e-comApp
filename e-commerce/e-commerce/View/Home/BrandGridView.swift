//
//  BrandGridView.swift
//  e-commerce
//
//  Created by ÖMER  on 23.01.2025.
//

import SwiftUI

struct BrandGridView: View {
    var body: some View {
        ScrollView(.horizontal){
            LazyHGrid(rows: gridLayout, spacing: columnSpacing){
                ForEach(brands){ brand in
                    BrandItemView(brand: brand)
                }
            }
            .frame(height: 200)
            .padding()
        }
    }
}

#Preview {
    BrandGridView()
}
