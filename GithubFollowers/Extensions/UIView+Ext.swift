//
//  UIView+Ext.swift
//  GithubFollowers
//
//  Created by Calvin Tang on 2/14/21.
//

import UIKit

extension UIView {
    
    // Variadic parameter
    // kind of like kwargs in python, add any amount of views
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
    
}
