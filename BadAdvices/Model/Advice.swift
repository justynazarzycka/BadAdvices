//
//  Advice.swift
//  BadAdvices
//
//  Created by Justyna Zarzycka on 22/02/2021.
//

import Foundation

struct Advice: Hashable, Codable, Identifiable {
    var id: Int
    var content: String
    var isFavorite: Bool
}
