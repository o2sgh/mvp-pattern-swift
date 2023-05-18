//
//  FruitViewModel.swift
//  MVVM
//
//  Created by kashif on 5/10/23.
//

import Foundation

//public class FruitViewModel {
//    typealias Observer<T> = (T) -> Void
//    
//    private let fruitLoader: FruitLoader
//    
//    init(fruitLoader: FruitLoader) {
//        self.fruitLoader = fruitLoader
//    }
//    
//    var onLoadingStateChange: Observer<Bool>?
//    var onFruitLoad: Observer<[Fruit]>?
//    
//    func loadFruit() {
//        onLoadingStateChange?(true)
//        fruitLoader.load { [weak self] result in
//            if let fruit = try? result.get() {
//                self?.onFruitLoad?(fruit)
//            }
//            self?.onLoadingStateChange?(false)
//        }
//    }
//}
