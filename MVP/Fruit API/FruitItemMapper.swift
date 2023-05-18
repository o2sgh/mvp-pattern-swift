//
//  FeedItemMapper.swift
//  MVVM
//
//  Created by kashif on 5/10/23.
//

import Foundation

final  class FruitItemMapper {
    
    static var OK_200: Int { return 200 }
    
    static func map(_ data: Data, _ response: HTTPURLResponse) throws -> [Fruit] {
        
        guard response.statusCode == OK_200,
              let root = try?  JSONDecoder().decode([Fruit].self, from: data) else {
            throw RemoteFruitLoader.Error.invalidData
        }
        return root
    }
}
