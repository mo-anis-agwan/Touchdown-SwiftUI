//
//  AddToCartDetailView.swift
//  Touchdown
//
//  Created by Anis on 15/06/21.
//

import SwiftUI

struct AddToCartDetailView: View {
    //MARK:- Properties
    @EnvironmentObject var shop: Shop
    
    //MARK:- Body
    var body: some View {
        Button(action: {
            feedback.impactOccurred()
        }, label: {
            Spacer()
            Text("Add to cart".uppercased())
                .font(.system(.title2, design: .rounded))
                .fontWeight(.bold)
                .foregroundColor(.white)
            Spacer()
        }) //: Add to button
        .padding(15)
        .background(
            Color(
                red: shop.selectedProduct?.red ?? sampleProduct.red,
                green: shop.selectedProduct?.red ?? sampleProduct.green,
                blue: shop.selectedProduct?.red ?? sampleProduct.blue
            )
        )
        .clipShape(Capsule())
    }
}

    //MARK:- Preview
struct AddToCartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AddToCartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
