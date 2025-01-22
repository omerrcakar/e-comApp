//
//  FeaturedItemView.swift
//  e-commerce
//
//  Created by ÖMER  on 22.01.2025.
//

import SwiftUI

struct FeaturedItemView: View {
    // MARK: - PROPERTY
    
    let player: Player
    
    
    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            
            .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    FeaturedItemView(player: players[0])
        .padding()
        .background(colorBackgound)
}
