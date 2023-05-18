//
//  FruitViewAdapter.swift
//  MVP
//
//  Created by kashif on 5/16/23.
//

import Foundation


final class FruitLoaderPresentationAdapter: FruitViewControllerDelegate {
    private let fruitLoader: FruitLoader
    var presenter: FruitPresenter?
    
    init(fruitLoader: FruitLoader) {
        self.fruitLoader = fruitLoader
    }
    
    func didRequestFruitRefresh() {
        presenter?.didStartLoadingFeed()
        
        fruitLoader.load { [weak self] result in
            switch result {
            case let .success(fruit):
                self?.presenter?.didFinishLoadingFeed(with: fruit)
                
            case .failure:
                self?.presenter?.didFinishLoadingFeed(with: [])
            }
        }
    }
}

