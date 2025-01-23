//
//  NagigationBarDetailView.swift
//  e-commerce
//
//  Created by ÖMER  on 23.01.2025.
//

import SwiftUI

struct NavigationBarDetailView: View {
    var body: some View {
        HStack{
            Button{
                
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
        .padding()
        .background(.gray)
}
