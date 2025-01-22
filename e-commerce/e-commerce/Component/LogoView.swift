//
//  LogoView.swift
//  e-commerce
//
//  Created by ÖMER  on 22.01.2025.
//

import SwiftUI

struct LogoView: View {
    var body: some View {
        HStack(spacing: 4){
            Text("Touch".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
            Image("logo-dark")
                .resizable()
                .frame(width: 34, height: 34)
            
            
            Text("Down".uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundStyle(.black)
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    LogoView()
        .padding()
}
