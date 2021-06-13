//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Anis on 13/06/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
