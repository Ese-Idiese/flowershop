//
//  ProductRow.swift
//  CleanUp
//
//  Created by Mac User on 6/3/23.
//

import SwiftUI

struct ProductRow: View {
    @EnvironmentObject var addMore: AddPlus
    var Product : Product
    var body: some View {
        HStack (spacing: 20){
            Image(Product.Image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
                
                .cornerRadius(40)
            
            VStack(alignment: .leading,spacing: 10){
                
                Text(Product.name)
                    .bold()
                Text("$\(Product.price)")
                    .bold()
            }
            Spacer()
            Button{
                
            }label: {
                Image(systemName:"trash" )
                    .foregroundColor(.white)
                    .frame(width: 40,height: 40)
                    .background(.black)
                    .cornerRadius(20)
                
                    .onTapGesture {
                        addMore.removeFromCart(product: Product)
                    }
            }
               
                
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    .padding(.horizontal)
      
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(Product: ProductList[3])
            .environmentObject(AddPlus())
    }
}
