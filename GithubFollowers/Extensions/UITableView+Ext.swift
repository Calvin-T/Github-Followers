//
//  UITableView+Ext.swift
//  GithubFollowers
//
//  Created by Calvin Tang on 2/14/21.
//

import UIKit

extension UITableView {
    
    func reloadDataOnMainThread() {
        DispatchQueue.main.async { self.reloadData() }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
}
