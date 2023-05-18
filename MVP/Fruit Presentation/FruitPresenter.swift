//
//  FruitPresenter.swift
//  MVVM
//
//  Created by kashif on 5/12/23.
//

import Foundation

public struct FruitLoadingViewModel {
    public let isLoading: Bool
}

public struct FruitViewModel {
    public let fruit: [Fruit]
}

protocol FruitLoadingView {
    func display(_ viewModel: FruitLoadingViewModel)
}

protocol FruitView {
    func display(_ viewModel: FruitViewModel)
}

public class FruitPresenter {
    var loadingView: FruitLoadingView
    var fruitView: FruitView
    
    init(loadingView: FruitLoadingView, fruitView: FruitView) {
        self.loadingView = loadingView
        self.fruitView = fruitView
    }
    
    public func didStartLoadingFeed() {
        loadingView.display(FruitLoadingViewModel(isLoading: true))
    }
    
    public func didFinishLoadingFeed(with fruit: [Fruit]) {
        fruitView.display(FruitViewModel(fruit: fruit))
        loadingView.display(FruitLoadingViewModel(isLoading: false))
    }
}
