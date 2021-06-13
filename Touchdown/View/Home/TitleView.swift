//
//  TitleView.swift
//  Touchdown
//
//  Created by Anis on 14/06/21.
//

import SwiftUI

struct TitleView: View {
    //MARK:- Properties
    var title: String
    
    //MARK:- Body
    var body: some View {
        HStack {
            Text("Helmet")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
        } //: HStack
        .padding(.horizontal)
        .padding(.top, 15)
        .padding(.bottom, 10)
    }
}

    //MARK:- Preview
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(title: "Helmet")
            .previewLayout(.sizeThatFits)
            .background(colorBackground)
    }
}
