//
//  NavbarDetailView.swift
//  Touchdown
//
//  Created by Anis on 14/06/21.
//

import SwiftUI

struct NavbarDetailView: View {
    //MARK:- Properties
    @EnvironmentObject var shop: Shop
    
    //MARK:- Body
    var body: some View {
        HStack {
            // Back Button
            Button(action: {
                withAnimation(.easeIn) {
                    shop.showingProduct = false
                    shop.selectedProduct = nil
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(.title)
                    .foregroundColor(.white)
                
                Spacer()
                
                // Cart Button
                Button(action: {}, label: {
                    Image(systemName: "cart")
                        .font(.title)
                        .foregroundColor(.white)
                })
            })
        }
    }
}

    //MARK:- Preview
struct NavbarDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavbarDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.gray)
    }
}
