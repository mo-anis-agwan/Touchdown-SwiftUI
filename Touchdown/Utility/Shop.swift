//
//  Shop.swift
//  Touchdown
//
//  Created by Anis on 15/06/21.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
