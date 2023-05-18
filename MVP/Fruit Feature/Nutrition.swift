//
//  Nutrition.swift
//  MVVM
//
//  Created by kashif on 5/10/23.
//

import Foundation

public struct Nutrition: Codable {
    public let calories: Float
    public let fat: Float
    public let sugar: Float
    public let carbohydrates: Float
    public let protein: Float
    
    init(calories: Float, fat: Float, sugar: Float, carbohydrates: Float, protein: Float) {
        self.calories = calories
        self.fat = fat
        self.sugar = sugar
        self.carbohydrates = carbohydrates
        self.protein = protein
    }
}
