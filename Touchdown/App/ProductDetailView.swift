//
//  ProductDetailView.swift
//  Touchdown
//
//  Created by Anis on 14/06/21.
//

import SwiftUI

struct ProductDetailView: View {
    //MARK:- Properties
    
    
    //MARK:- Body
    var body: some View {
        VStack(alignment: .leading, spacing: 5, content: {
            // Navbar
            NavbarDetailView()
                .padding(.horizontal)
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
            
            // Header
            HeaderDetailView()
                .padding(.horizontal)
            
            // Detail Top part
            TopPartDetailView()
                .padding(.horizontal)
                .zIndex(1.0)
                
            // Detail Bottom Part
            VStack(alignment: .center, spacing: 0, content: {
                // Ratings + Sizes
                RatingSizesDetailView()
                    .padding(.top, -25)
                    .padding(.bottom, 10)
                
                // Description
                ScrollView(.vertical, showsIndicators: false, content: {
                    
                    Text(sampleProduct.description)
                        .font(.system(.body, design: .rounded))
                        .foregroundColor(.gray)
                        .multilineTextAlignment(.leading)
                    
                }) //: ScrollView
                
                // Quantity + Favs
                QuantityFavDetailView()
                    .padding(.vertical, 10)
                
                // Add to cart
               AddToCartDetailView()
                .padding(.bottom, 20)
                
            }) //: VStack
            .padding(.horizontal)
            .background(
                Color.white.clipShape(CustomShape())
                    .padding(.top, -105)
            )
                            
        }) //: VStack
        .zIndex(0)
        .ignoresSafeArea(.all, edges: .all)
        .background(Color(
                        red: sampleProduct.red,
                        green: sampleProduct.green,
                        blue: sampleProduct.blue)
                        .ignoresSafeArea(.all, edges: .all)
        )
    }
}

    //MARK:- Preview
struct ProductDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ProductDetailView()
            .previewLayout(.fixed(width: 375, height: 812))
    }
}
