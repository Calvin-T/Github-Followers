//
//  GFBodyLabel.swift
//  GithubFollowers
//
//  Created by Calvin Tang on 2/12/21.
//

import UIKit

class GFBodyLabel: UILabel {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    convenience init(textAlignment: NSTextAlignment) {
        self.init(frame: .zero)
        self.textAlignment = textAlignment
    }
    
    private func configure() {
        font = UIFont.preferredFont(forTextStyle: .body)
        textColor = .secondaryLabel
        adjustsFontForContentSizeCategory = true
        adjustsFontSizeToFitWidth = true
        minimumScaleFactor = 0.7
        lineBreakMode = .byWordWrapping
        
        translatesAutoresizingMaskIntoConstraints = false
    }

}
