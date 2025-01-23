//
//  SectionView.swift
//  e-commerce
//
//  Created by ÖMER  on 22.01.2025.
//

import SwiftUI

struct SectionView: View {
    
    @State var rotateClockwise: Bool = false
    
    var body: some View {
        VStack(spacing: 0){
            Spacer()
            
            Text("categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        }
        .background(colorGray)
        .clipShape(RoundedRectangle(cornerRadius: 12))
        .frame(width: 85)
    }
}

#Preview {
    SectionView()
}
