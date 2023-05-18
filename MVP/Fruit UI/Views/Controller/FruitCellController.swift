//
//  FruitCellController.swift
//  MVVM
//
//  Created by kashif on 5/10/23.
//

import UIKit

public final class FruitCellController {
    private var cell: FruitCell?
    private var model: FruitCellViewModel
    init(model: FruitCellViewModel) { self.model = model }
    
    func view(in tableView: UITableView) -> UITableViewCell {
        cell = tableView.dequeueReusableCell(withIdentifier: "FruitCell") as? FruitCell
        display()
        return cell!
    }
    
    public func display() {
        cell?.fruitLabel.text = model.name
        cell?.genusLabel.text = model.genus
        cell?.familyLabel.text = model.family
        cell?.orderLabel.text = model.order
        cell?.carbohydratesLabel.text = model.carbohydrates
        cell?.proteinLabel.text = model.protein
        cell?.fatLabel.text = model.fat
        cell?.caloriesLabel.text = model.calories
        cell?.sugarLabel.text = model.sugar
    }
    
}
