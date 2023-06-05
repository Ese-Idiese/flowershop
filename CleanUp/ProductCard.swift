//
//  ProductCard.swift
//  CleanUp
//
//  Created by Mac User on 6/1/23.
//

import SwiftUI

struct ProductCard: View {
    @EnvironmentObject var addMore: AddPlus
    var product:Product
    var body: some View {
       
    ZStack(alignment: .topTrailing){
      ZStack(alignment: .bottom){
            Image(product.Image)
                .resizable()
                .frame(width:180,height: 200)
                .scaledToFit()
                .cornerRadius(20)
                        
                        
    VStack(alignment: .leading){
        Text(product.name)
             .foregroundColor(Color.primary)
             //.font(.largeTitle)
             .bold()
                            
        Text("$\(product.price)")
            .fontWeight(.heavy)
                            
    }
                        
        .padding(12)
        .frame(width: 180, alignment: .leading)
        .background(.ultraThinMaterial)
        .cornerRadius(30)
        .shadow(radius: 3)
                        
                }
        
        Button{
            addMore.addToCart(product:product)
        }label: {
            Image(systemName:"plus")
                .bold()
                .foregroundColor(.white)
                .frame(width: 40,height: 40)
                .background(.black)
                .cornerRadius(20)
                .padding(8)
                }
        
        
                
                
            }
        
        
        }
    }


struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product: ProductList[2])
            .environmentObject(AddPlus())
    }
}
