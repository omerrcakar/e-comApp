//
//  RatingSizeDetailView.swift
//  e-commerce
//
//  Created by ÖMER  on 23.01.2025.
//

import SwiftUI

struct RatingSizeDetailView: View {
    
    let sizes: [String] = ["XS", "S", "M", "L" , "XL"]
    
    
    var body: some View {
        HStack(alignment: .top, spacing: 3) {
            VStack(alignment: .leading, spacing: 3){
                Text("Ratings")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(.gray)
                
                HStack(alignment: .center,spacing: 3){
                    ForEach(1...5, id: \.self){ item in
                        Button{
                            
                        }label: {
                            Image(systemName: "star.fill")
                                .frame(width: 28,height: 28)
                                .background(colorGray)
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .foregroundStyle(.white)
                        }
                    }
                }
            }
            
            Spacer()
            
            VStack(alignment: .trailing, spacing: 3){
                Text("Sizes")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(colorGray)
                
                HStack(alignment: .center,spacing: 5){
                    ForEach(sizes, id: \.self){ size in
                        Button{
                            
                        }label: {
                            Text(size)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(colorGray)
                                .frame(width: 28, height: 28)
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(colorGray, lineWidth: 2)
                                )
                        }
                    }
                }
            }
            
            
        }
    }
}

#Preview {
    RatingSizeDetailView()
}
