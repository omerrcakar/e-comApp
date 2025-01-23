//
//  CategoryItemView.swift
//  e-commerce
//
//  Created by ÖMER  on 22.01.2025.
//

import SwiftUI

struct CategoryItemView: View {
    let category: Category
    
    var body: some View {
        Button{
            
        }label: {
            HStack(alignment: .center, spacing: 6){
                Image(category.image)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundStyle(.gray)
                Text(category.name.uppercased())
                    .fontWeight(.light)
                    .foregroundStyle(.gray)
                
                Spacer()
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(.gray, lineWidth: 1)
            )
        }
    }
}

#Preview {
    CategoryItemView(category: categories[0])
}
