//
//  FruitRefreshViewController.swift
//  MVVM
//
//  Created by kashif on 5/11/23.
//

import UIKit

final class FruitRefreshViewController: NSObject {
    @IBOutlet private var view: UIRefreshControl?
    
    var viewModel: FruitViewModel?
    
    @IBAction func refresh() {
//        viewModel?.loadFruit()
    }
    
    func display() {
//        viewModel?.onLoadingStateChange = { [weak view] isLoading in
//            DispatchQueue.main.async {
//                if isLoading {
//                    view?.beginRefreshing()
//                } else {
//                    view?.endRefreshing()
//                }
//            }
//        }
    }
}
