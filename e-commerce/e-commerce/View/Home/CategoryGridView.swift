//
//  CategoryGridView.swift
//  e-commerce
//
//  Created by ÖMER  on 22.01.2025.
//

import SwiftUI

struct CategoryGridView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            LazyHGrid(rows: gridLayout, spacing: columnSpacing){
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    ForEach(categories){ category in
                        CategoryItemView(category: category)
                    }
                }
            }
            .frame(height: 140)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
        }
    }
}

#Preview {
    CategoryGridView()
}
