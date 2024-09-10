//
//  ContentView.swift
//  edaShop
//
//  Created by EDA on 6/18/1403 AP.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    
    var colomns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
       
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colomns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                        .environmentObject(cartManager)
                    }
                   
                    
                }
                .padding()
                
            }
            .navigationTitle(Text("Eda Shop"))
            .toolbar {
                
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)

                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
