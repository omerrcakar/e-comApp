//
//  TitleComponent.swift
//  e-commerce
//
//  Created by ÖMER  on 23.01.2025.
//

import SwiftUI

struct TitleComponent: View {
    var title: String
    
    var body: some View {
        HStack{
            Text(title)
                .font(.largeTitle)
                .fontWeight(.heavy)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 15)
    }
}

#Preview {
    TitleComponent(title: "Helmet")
}
