//
//  Cart Button.swift
//  Challenge 3
//
//  Created by Hisham Helwani on 12/14/22.
//

import SwiftUI

struct CartButton: View {
    var numeberOfProducts: Int
    
    var body: some View{
        ZStack(alignment: .topTrailing) {
            Image(systemName: "cart")
                .padding(.top, 5)
            
            if numeberOfProducts > 0 {
                Text("\(numeberOfProducts)")
                    .font(.caption2).bold()
                    .foregroundColor(.white)
                    .frame(width: 15, height: 15)
                    .background(Color(hue: 1.0, saturation: 0.89, brightness: 0.835))
                    .cornerRadius(50)
            }
        }
    }
}

struct Cart_Button_Previews: PreviewProvider {
    static var previews: some View {
        CartButton(numeberOfProducts: 1)
    }
}
