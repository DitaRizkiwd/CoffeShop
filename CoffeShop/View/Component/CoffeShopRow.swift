//
//  CoffeShopRow.swift
//  CoffeShop
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct CoffeShopRow: View {
    var coffe : ListCoffeeShop
    
    var body: some View {
        HStack(alignment:.top, spacing: 16){
            Image(coffe.image)
                .resizable()
                .scaledToFit()
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            VStack (alignment: .leading, spacing: 8){
                Text(coffe.name)
                    .font(.system(.headline,design: .rounded))
                    .foregroundStyle(.cyan)
                Text(coffe.description)
                    .font(.system(.subheadline,design:.rounded))
                    .lineLimit(2)
                    .fontWeight(.bold)
                Text(coffe.location)
                    .font(.system(.subheadline,design: .rounded))
                    .foregroundStyle(.secondary)
                    
            }
        }
    }
}

#Preview {
    CoffeShopRow(coffe : CoffeeshopProvider.allData().first!)
        .padding()
}
