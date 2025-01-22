//
//  NavigationBarView.swift
//  e-commerce
//
//  Created by ÖMER  on 22.01.2025.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - PROPEERTIES
    
    @State private var isAnimated: Bool = false
    
    var body: some View {
        HStack{
            Button{
                
            }label: {
                Image(systemName: "magnifyingglass")
                    .font(.title)
                    .foregroundStyle(.black)
            }
            
            Spacer()
            
            LogoView()
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear {
                    withAnimation(.easeOut(duration: 0.5)){
                        isAnimated.toggle()
                    }
                }
            
            Spacer()
            
            Button{
                
            }label: {
                ZStack{
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundStyle(.black)
                    Circle()
                        .fill(.red)
                        .frame(width: 14, height: 14)
                        .offset(x: 13, y: -10)
                }
            }
            
        }//: HSTACK
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    NavigationBarView()
        .padding()
        
}
