//
//  FeedViewAdapter.swift
//  MVP
//
//  Created by kashif on 5/17/23.
//

import Foundation

final class FruitViewAdapter: FruitView {
    private weak var controller: FruitViewController?
    
    init(controller: FruitViewController) {
        self.controller = controller
    }
    
    func display(_ viewModel: FruitViewModel) {
        controller?.tableModel = viewModel.fruit.map { model in
            let cell = FruitCellController(model: FruitCellViewModel(model: model))
            return cell
        }
    }
}
