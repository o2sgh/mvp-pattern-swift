//
//  RemoteFeedLoader.swift
//  MVVM
//
//  Created by kashif on 5/10/23.
//

import Foundation

public final class RemoteFruitLoader: FruitLoader {
    private let url: URL
    private let client: HTTPClient
    
    public enum Error: Swift.Error {
        case connectivity
        case invalidData
    }
    
    public typealias Result = FruitLoader.Result
    
    public init(url: URL, client: HTTPClient) {
        self.client = client
        self.url = url
    }
    
    public func load(completion: @escaping (Result) -> Void) {
        client.get(from: url) { [weak self] result in
            guard self != nil else { return }
            switch result {
            case let  .success((data, response)):
                completion(RemoteFruitLoader.map(data, from: response))
                
            case .failure:
                completion(.failure(Error.connectivity))
            }
        }
    }
    
    private static func map(_ data: Data, from response: HTTPURLResponse) -> Result {
        do {
            let items = try FruitItemMapper.map(data, response)
            return .success(items)
        } catch {
            return .failure(error)
        }
    }
}
