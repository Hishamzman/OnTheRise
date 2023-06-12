//
//  tetetest.swift
//  Challenge 3
//
//  Created by Hisham Helwani on 12/21/22.
//

import SwiftUI

struct tetetest: View {
    @State private var animateGradient = false
    //    @StateObject var cartManager = CartManager()
    //    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        
        //        ZStack {        NavigationView {
        //            ScrollView {
        
        //                LazyVGrid(columns: columns, spacing: 20){
        //                    ForEach(productlist, id: \.id) {Product in ProductCard(product: Product)}
        //                        .environmentObject(cartManager)
        
        VStack {
            LinearGradient(colors: [.purple, .yellow], startPoint: animateGradient ? .topLeading : .bottomLeading, endPoint: animateGradient ? .bottomTrailing : .topTrailing)
                .ignoresSafeArea()
                .onAppear {
                    withAnimation(.linear(duration: 2.0).repeatForever(autoreverses: true)) {
                        animateGradient.toggle()
                    }
            }
        }
    }
    
}

//
//    struct AnimatableGradientModifier: AnimatableModifier {
//        let fromGradient: Gradient
//        let toGradient: Gradient
//        var progress: CGFloat = 0.0
//
//        var animatableData: CGFloat {
//            get { progress }
//            set { progress = newValue }
//        }
//
//        func body(content: Content) -> some View {
//            var gradientColors = [Color]()
//
//            for i in 0..<fromGradient.stops.count {
//                let fromColor = UIColor(fromGradient.stops[i].color)
//                let toColor = UIColor(toGradient.stops[i].color)
//
//                gradientColors.append(colorMixer(fromColor: fromColor, toColor: toColor, progress: progress))
//            }
//
//            return LinearGradient(gradient: Gradient(colors: gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
//        }
//}

struct tetetest_Previews: PreviewProvider {
    static var previews: some View {
        tetetest()
    }}
