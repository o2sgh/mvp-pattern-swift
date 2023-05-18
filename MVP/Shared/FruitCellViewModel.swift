//
//  FruitCellViewModel.swift
//  MVVM
//
//  Created by kashif on 5/11/23.
//

import UIKit

final public class FruitCellViewModel {
    private let model: Fruit
    
    init(model: Fruit) {
        self.model = model
    }
    
    var name: String {
        return model.name
    }
    
    var family: String {
        return model.family
    }
    
    var order: String {
        return model.order
    }
    
    var genus: String {
        return model.genus
    }
    
    var calories: String {
        return String(model.nutritions.calories)
    }
    
    var fat: String {
        return String(model.nutritions.fat)
    }
    
    var sugar: String {
        return String(model.nutritions.sugar)
    }
    
    var carbohydrates: String {
        return String(model.nutritions.carbohydrates)
    }
    
    var protein: String {
        return String(model.nutritions.protein)
    }
    
    
}
