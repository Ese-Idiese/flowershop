
//
//  Product.swift
//  CleanUp
//
//  Created by Mac User on 6/1/23.
//

import Foundation
struct Product: Identifiable{
    
    var id =  UUID()
    var name: String
    var Image: String
    var price: Int
    
}
var ProductList = [ Product(name: "Flower Vase", Image: "images-12", price: 50),
                    Product(name: "Arrow Vase", Image: "images-14", price: 60),
                    Product(name: "Canvas Vase", Image: "images-15", price: 55),
                    Product(name: "Purple Vase", Image: "images-16", price: 59),
                    Product(name: "Rose Vase", Image: "images-17", price: 50),
                    Product(name: "White Vase", Image: "images-18", price: 57),
                    Product(name: "Silver Vase", Image: "images-19", price: 56),
                    Product(name: "Water Vase", Image: "images-20", price: 50),
                    Product(name: "Purple Vase", Image: "images-16", price: 59),
                    Product(name: "Rose Vase", Image: "images-17", price: 50),
                    Product(name: "White Vase", Image: "images-18", price: 57),
                    Product(name: "Silver Vase", Image: "images-19", price: 56),
                    Product(name: "Water Vase", Image: "images-20", price: 50)]
                    

