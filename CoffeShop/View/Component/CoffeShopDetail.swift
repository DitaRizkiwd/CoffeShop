//
//  CoffeShopDetail.swift
//  CoffeShop
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct CoffeShopDetail: View {
    var coffe : ListCoffeeShop
    @Environment(\.dismiss) var dismiss
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false){
                HeaderViewDetail(coffe: coffe)
                
                Text(coffe.overview)
                    .padding()
                    .padding(.horizontal)
            }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            .toolbar{
                ToolbarItem(placement: .topBarLeading){
                    Button{
                        dismiss()
                    }
                label:{
                    Image(systemName: "chevron.left.circle.fill")
                        .font(.title3)
                }
                .tint(.primary)
                }
            }
            
        }
    }
}

#Preview {
    CoffeShopDetail(coffe: CoffeeshopProvider.allData().first!)
}
