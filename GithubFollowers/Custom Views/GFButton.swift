//
//  GFButton.swift
//  GithubFollowers
//
//  Created by Calvin Tang on 2/12/21.
//

import UIKit

class GFButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(text: String, color: UIColor) {
        super.init(frame: .zero)
        self.setTitle(text, for: .normal)
        self.backgroundColor = color
        configure()
    }
    
    private func configure() {
        layer.cornerRadius = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        
        // This flag set to false because size will be determined by constraints set
        translatesAutoresizingMaskIntoConstraints = false
    }

}
