//
//  OutputCardView.swift
//  Tippo
//
//  Created by sourav sachdeva on 20/12/19.
//  Copyright © 2019 sourav sachdeva. All rights reserved.
//

import UIKit

class OutputCardView: UIView {

    override init(frame: CGRect) {
           super.init(frame: frame)
       }
       
    required init?(coder: NSCoder) {
           super.init(coder: coder)
            setupView()
       }
    func setupView(){
        layer.cornerRadius = 8
        layer.masksToBounds = true
        layer.borderWidth = 1
        layer.borderColor = UIColor.black.cgColor
    }

}
