//
//  Product.swift
//  edaShop
//
//  Created by EDA on 6/19/1403 AP.
//

import Foundation

struct Product: Identifiable {
    
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    
}

var productList = [
    Product(name: "wool sweater", image: "sweater1", price: 250),
    Product(name: "Pullover Heart", image: "sweater2", price: 214),
    Product(name: "V-Neck Pullover", image: "sweater3", price: 340),
    Product(name: "LUNE Pullover", image: "sweater4", price: 220),
    Product(name: "Privé Pullover", image: "sweater5", price: 160),
    Product(name: "SHEIN Damen", image: "sweater6", price: 19),
    Product(name: "Sleeve Cardigan", image: "sweater7", price: 117),
    Product(name: "Button Down Crop", image: "sweater8", price: 87)

]
