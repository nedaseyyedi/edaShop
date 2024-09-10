//
//  CartView.swift
//  edaShop
//
//  Created by EDA on 6/19/1403 AP.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var body: some View {
        ScrollView {
            if cartManager.products.count > 0 {
                ForEach(cartManager.products, id: \.id) {
                    product in
                ProductRow(product: product)
                }
                
                HStack {
                    Text("Yor total cart is")
                    Spacer()
                    Text("$\(cartManager.total).00")
                        .bold()
                }
                .padding()
                
                PaymentButton(action: {})
                    .padding()
            }
            else {
                Text("Your cart is empty")
            }
            
            
        }
        .navigationTitle(Text("My cart"))
        .padding(.top)
    }
}

#Preview {
    CartView()
        .environmentObject(CartManager())
}
