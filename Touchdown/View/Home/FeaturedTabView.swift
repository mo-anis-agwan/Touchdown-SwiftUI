//
//  FeaturedTabView.swift
//  Touchdown
//
//  Created by Anis on 13/06/21.
//

import SwiftUI

struct FeaturedTabView: View {
    //MARK:- Properties
    
    //MARK:- Body
    var body: some View {
        TabView {
            ForEach(players) { player in
                FeaturedItemView(player: player)
                    .padding(.top, 10)
                    .padding(.horizontal, 15)
            }
        } //: TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
    }
}

    //MARK:- Preview
struct FeaturedTabView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedTabView()
            .background(Color.gray)
    }
}
