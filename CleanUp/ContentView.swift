//
//  ContentView.swift
//  CleanUp
//
//  Created by Mac User on 6/1/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var addMore = AddPlus()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationStack{
            ScrollView{
                
                LazyVGrid(columns: columns, spacing: 20){
                    ForEach(ProductList, id: \.id){
                        product in
                        ProductCard(product:product)
                            .environmentObject(addMore)

                    }
                }
                .padding()
                      }
            .navigationTitle(Text("Flower & Vase"))
            .font(.caption)
            .toolbar{
                
                NavigationLink(destination: ChartView()
                    .environmentObject(addMore),
                        label: {
                    Cart(numberOfProducts: addMore.products.count)
                        

                })
               
            
            }
        }
        //.navigationViewStyle(StackNavigationViewStyle())
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AddPlus())
        
    }
}
