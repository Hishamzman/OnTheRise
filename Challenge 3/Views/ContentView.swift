//
//  ContentView.swift
//  Challenge 3
//
//  Created by Hisham Helwani on 12/7/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
                           
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productlist, id: \.id) {Product in ProductCard(product: Product)}
                        .environmentObject(cartManager)
                }
                
            .padding()
            }
            .navigationTitle(Text("On The Rise"))
            .toolbar{
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                }
                label: {
                    CartButton(numeberOfProducts: cartManager.products.count)


                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
}}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
