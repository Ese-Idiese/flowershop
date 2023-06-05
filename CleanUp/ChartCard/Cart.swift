//
//  Cart.swift
//  CleanUp
//
//  Created by Mac User on 6/3/23.
//

import SwiftUI

struct Cart: View {

    var numberOfProducts : Int
    
    var body: some View {
        ZStack(alignment: .topTrailing){
          Image(systemName: "cart")
                .padding(.top, 5)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .bold()
                    .foregroundColor(.white)
                    .frame(width: 15,height: 15)
                    .background(Color(hue: 1.8, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
            
        }
       
    }
}

struct Cart_Previews: PreviewProvider {
    static var previews: some View {
        Cart(numberOfProducts: 1)
           
    }
}
