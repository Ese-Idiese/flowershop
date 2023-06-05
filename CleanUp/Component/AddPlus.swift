
//
//  AddPlus.swift
//  CleanUp
//
//  Created by Mac User on 6/3/23.
//

import Foundation

class AddPlus: ObservableObject{
    @Published private (set) var products:[Product] = []
    @Published private (set) var total :Int = 0
    
    
    func addToCart(product: Product){
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product){
        products = products.filter{$0.id != product.id}
        total -= product.price
    }
    
}
