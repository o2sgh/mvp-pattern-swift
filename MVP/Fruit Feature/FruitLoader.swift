//
//  FruitLoader.swift
//  MVVM
//
//  Created by kashif on 5/10/23.
//

import Foundation

public protocol FruitLoader {
    typealias Result = Swift.Result<[Fruit], Error>
    
    func load(completion: @escaping (Result) -> Void)
}
