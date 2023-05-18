//
//  FruitCell.swift
//  MVVM
//
//  Created by kashif on 5/10/23.
//

import UIKit

public final class FruitCell: UITableViewCell {
    @IBOutlet private(set) public var fruitLabel: UILabel!
    @IBOutlet private(set) public var genusLabel: UILabel!
    @IBOutlet private(set) public var familyLabel: UILabel!
    @IBOutlet private(set) public var orderLabel: UILabel!
    @IBOutlet private(set) public var carbohydratesLabel: UILabel!
    @IBOutlet private(set) public var proteinLabel: UILabel!
    @IBOutlet private(set) public var fatLabel: UILabel!
    @IBOutlet private(set) public var caloriesLabel: UILabel!
    @IBOutlet private(set) public var sugarLabel: UILabel!
    
    public override func prepareForReuse() {
        super.prepareForReuse()
        
    }
}
