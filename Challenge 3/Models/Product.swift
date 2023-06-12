//
//  Product.swift
//  Challenge 3
//
//  Created by Hisham Helwani on 12/14/22.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image:  String
    var price: Int
}

var productlist =  [Product(name: "Hat", image: "hat", price: 20),
                    Product(name: "Hoody", image: "hoody", price: 40),
                    Product(name: "Tshirt", image: "tshirt", price: 25),
                    Product(name: "Sweater", image: "sweater", price: 35),
                    Product(name: "Socks", image: "socks", price: 15),
                    Product(name: "Pullover", image: "pullover", price: 55)
]
