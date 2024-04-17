//
//  ContentView.swift
//  CoffeShop
//
//  Created by MACBOOK PRO on 17/04/24.
//

import SwiftUI

struct ContentView: View {
    var coffeshop : [ListCoffeeShop] = CoffeeshopProvider.allData()
    var body: some View {
        NavigationStack{
            List(coffeshop){
                coffe in 
                NavigationLink{
                    CoffeShopDetail(coffe: coffe)
                }label:{
                    CoffeShopRow(coffe: coffe)
                }
                .listRowSeparator(.hidden)
            }
            .navigationTitle("CoffeShop")
            .navigationBarTitleDisplayMode(.inline)
            .listStyle(.plain)
        }
    }
}

#Preview {
    ContentView()
}
