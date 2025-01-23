//
//  FavoriteView.swift
//  e-commerce
//
//  Created by ÖMER  on 23.01.2025.
//

import SwiftUI

struct FavoriteView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        HStack(spacing: 6){
            Button{
                if counter > 0 {
                    counter -= 1
                }
            }label: {
                Image(systemName: "minus.circle")
            }
            
            Text("\(counter)")
                .fontWeight(.semibold)
                .frame(minWidth: 36)
            
            Button{
                if counter < 10 {
                    counter += 1
                }
            }label: {
                Image(systemName: "plus.circle")
                    
            }
            
            Spacer()
            
            Button{
                
            }label: {
                Image(systemName: "heart.circle")
                    .foregroundStyle(.pink)
            }
            
        }
        .font(.system(.title, design: .rounded))
        .foregroundStyle(.black)
        
    }
}

#Preview {
    FavoriteView()
}
