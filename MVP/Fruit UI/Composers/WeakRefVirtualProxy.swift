//
//  WeakRefVirtualProxy.swift
//  MVP
//
//  Created by kashif on 5/16/23.
//

import Foundation

final class WeakRefVirtualProxy<T: AnyObject> {
    private weak var object: T?
    
    init(_ object: T) {
        self.object = object
    }
}

extension WeakRefVirtualProxy: FruitLoadingView where T: FruitLoadingView {
    func display(_ viewModel: FruitLoadingViewModel) {
        object?.display(viewModel)
    }
}

extension WeakRefVirtualProxy: FruitView where T: FruitView {
    func display(_ viewModel: FruitViewModel) {
        object?.display(viewModel)
    }
}
