//
//  FeaturedTabView.swift
//  e-commerce
//
//  Created by ÖMER  on 22.01.2025.
//

import SwiftUI

struct FeaturedTabView: View {
    var body: some View {
        TabView {
            ForEach(players){ player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

#Preview {
    FeaturedTabView()
}
