//
//  HeaderView.swift
//  Tippo
//
//  Created by sourav sachdeva on 21/12/19.
//  Copyright © 2019 sourav sachdeva. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    override init(frame: CGRect) {
        super.init(frame:frame)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    func setupViews() {
            layer.shadowOffset = CGSize(width: 0, height: 1)
            layer.shadowOpacity = 0.05
            layer.shadowColor = UIColor.black.cgColor
            layer.shadowRadius = 35
    }
  

}
