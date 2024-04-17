//
//  HeaderViewDetail.swift
//  CoffeShop
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct HeaderViewDetail: View {
    var coffe : ListCoffeeShop
    var body: some View {
        ZStack(alignment:.bottom){
            Image(coffe.image)
            HStack {
                VStack(alignment:.leading, spacing: 4){
                    Text(coffe.name)
                        .font(.system(size: 32))
                        .foregroundStyle(.white)
                    
                    Text(coffe.location)
                        .foregroundStyle(.secondary)
                }
                
                Spacer()
                Image(systemName: "fork.knife.circle.fill")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundStyle(.orange)
                
            }
            .padding(.horizontal)
            .padding()
            .background(RandomColor.bgView().opacity(0.7))
            
            
        }
        
    }
}

#Preview {
    HeaderViewDetail(coffe: CoffeeshopProvider.allData().first!)
}
