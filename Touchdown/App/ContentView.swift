//
//  ContentView.swift
//  Touchdown
//
//  Created by Anis on 22/05/21.
//

import SwiftUI

struct ContentView: View {
    //MARK:- Properties
    
    
    //MARK:- Body
    var body: some View {
        ZStack {
            VStack(spacing:0) {
                
                //Navigation Bar
                NavigationBarView()
                    .padding(.horizontal, 15)
                    .padding(.bottom)
                    .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                    .background(Color.white)
                    .shadow(color: Color.black.opacity(0.05), radius: 5, x: 0, y: 5)
                
               
                ScrollView(.vertical, showsIndicators: false, content: {
                    VStack(spacing: 0) {
                        //Feature View
                        FeaturedTabView()
                            .padding(.vertical, 20)
                            .frame(height: UIScreen.main.bounds.width / 1.475)
                        
                        //Category Grid View
                        CategoryGridView()
                        
                        // Helmet Title View
                        TitleView(title: "Helmet")
                        
                        //Footer
                        FooterView()
                            .padding(.horizontal)
                    } //: VStack
                }) //: ScrollView
                
               
            } //:Vstack
            .background(colorBackground.ignoresSafeArea(.all, edges: .all))
        }
    }
}
    //MARK:- Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
