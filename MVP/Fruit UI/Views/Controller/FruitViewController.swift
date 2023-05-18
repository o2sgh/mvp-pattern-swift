//
//  FruitViewController.swift
//  MVVM
//
//  Created by kashif on 5/10/23.
//

import UIKit

protocol FruitViewControllerDelegate {
    func didRequestFruitRefresh()
}

public final class FruitViewController: UITableViewController, FruitLoadingView {
    
    var delegate: FruitViewControllerDelegate?
    
    var tableModel = [FruitCellController]() {
        didSet {
            self.tableView.reloadData()
        }
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fruits"
        refresh()
    }
    
    @IBAction private func refresh() {
        delegate?.didRequestFruitRefresh()
    }
    
    func display(_ viewModel: FruitLoadingViewModel) {
        refreshControl?.update(isRefreshing: viewModel.isLoading)
    }
    
    public override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableModel.count
    }
    
    public override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellController(forRowAt: indexPath).view(in: tableView)
    }
    
    public override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    private func cellController(forRowAt indexPath: IndexPath) -> FruitCellController {
        return tableModel[indexPath.row]
    }
}
