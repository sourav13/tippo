//
//  ViewController.swift
//  Tippo
//
//  Created by sourav sachdeva on 20/12/19.
//  Copyright © 2019 sourav sachdeva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var themeSwitch: UISwitch!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var billAmounttextField: UITextField!
    @IBOutlet weak var tipPercentageSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var tipAmountTitle: UILabel!
    @IBOutlet weak var totalAmountTitle: UILabel!
    @IBOutlet weak var tipAmountValue: UILabel!
    @IBOutlet weak var totalAmountValue: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func themeToggled(_ sender: UISwitch, forEvent event: UIEvent) {
        if sender.isOn{
            print("dark theme")
        }else{
            print("light theme")
        }
    }
    
    @IBAction func tipPercentageChanged(_ sender: UISegmentedControl, forEvent event: UIEvent) {
        
    }
    @IBAction func resetButtonTapped(_ sender: UIButton) {
    }
}

