//
//  ChartView.swift
//  CleanUp
//
//  Created by Mac User on 6/3/23.
//

import SwiftUI

struct ChartView: View {
    @EnvironmentObject var addMore : AddPlus
    var body: some View {
        // NavigationStack{
        ScrollView{
            if addMore.products.count > 0 {
                ForEach(addMore.products,id: \.id){
                    Product in
                    ProductRow(Product: Product)
                }
                HStack{
                    Text("Total Cost is")
                    Spacer()
                    Text("$\(addMore.total).00")
                }.padding().bold()
                
                PaymentButton(action: {})
                    .padding()
            }else{
                
                Text("your cart is empty!!!")
                    .navigationTitle(Text("My chart"))
                
            }
        }
    }
}
struct ChartView_Previews: PreviewProvider {
    static var previews: some View {
        ChartView()
            .environmentObject(AddPlus())
    }
}
