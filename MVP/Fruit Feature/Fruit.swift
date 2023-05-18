//
//  Fruit.swift
//  MVVM
//
//  Created by kashif on 5/10/23.
//

import Foundation

public struct Fruit: Codable {
    public let name: String
    public let id: UInt
    public let family: String
    public let order: String
    public let genus: String
    public let nutritions: Nutrition
    
    init(name: String, id: UInt, family: String, order: String, genus: String, nutritions: Nutrition) {
        self.name = name
        self.id = id
        self.family = family
        self.order = order
        self.genus = genus
        self.nutritions = nutritions
    }
}
