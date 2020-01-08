//
//  BillAmountTextField.swift
//  Tippo
//
//  Created by sourav sachdeva on 21/12/19.
//  Copyright © 2019 sourav sachdeva. All rights reserved.
//

import UIKit
import Foundation

class BillAmountTextField: UITextField {

    var buttonTapAction : (()->Void)?
    required init?(coder: NSCoder) {
        super.init(coder:coder)
        let toolbar :  UIToolbar = UIToolbar()
        let leadingFlex  = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let trailingFlex = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let calculateButton = UIBarButtonItem(title: "Calculate Tip", style: .done, target: self, action: #selector(doneButtonTapped(_:)))
        toolbar.items = [leadingFlex,calculateButton,trailingFlex]
        toolbar.sizeToFit()
        self.inputAccessoryView = toolbar
    }
   @objc private func doneButtonTapped(_ sender : UIBarButtonItem){
        buttonTapAction?()
    }

}
