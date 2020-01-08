//
//  ViewController.swift
//  Tippo
//
//  Created by sourav sachdeva on 20/12/19.
//  Copyright © 2019 sourav sachdeva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var headerView: UIView!
    @IBOutlet weak var themeSwitch: UISwitch!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var billAmounttextField: BillAmountTextField!
    @IBOutlet weak var tipPercentageSegmentControl: UISegmentedControl!
    
    @IBOutlet weak var tipAmountTitle: UILabel!
    @IBOutlet weak var totalAmountTitle: UILabel!
    @IBOutlet weak var tipAmountValue: UILabel!
    @IBOutlet weak var totalAmountValue: UILabel!
    
    @IBOutlet weak var resetButton: UIButton!
    
    var isDefaultStatusBar = true

    override var preferredStatusBarStyle: UIStatusBarStyle {
          return isDefaultStatusBar ? .default : .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        billAmounttextField.buttonTapAction = {
            self.calculate()
        }
        // Do any additional setup after loading the view.
    }

    func calculate(){
        if self.billAmounttextField.isFirstResponder {
              self.billAmounttextField.resignFirstResponder()
        }
        guard let billAmountText = self.billAmounttextField.text,let billAmount = Double(billAmountText)else{
            clear()
            return
        }
        let roundedBillAmount = (100 * billAmount).rounded() / 100
        let tipPercent: Double
        switch tipPercentageSegmentControl.selectedSegmentIndex {
        case 0:
            tipPercent = 0.15
        case 1:
            tipPercent = 0.18
        case 2:
            tipPercent = 0.20
        default:
            preconditionFailure("Unexpected index.")
        }
        let tipAmount = roundedBillAmount * tipPercent
        let roundedTipAmount = (100 * tipAmount).rounded() / 100
        
        let totalAmount = roundedBillAmount + roundedTipAmount
        
        print("Tip Amount: \(roundedTipAmount)")
        print("Bill Amount: \(roundedBillAmount)")
        print("Bill Amount: \(totalAmount)")
        self.billAmounttextField.text = String(format: "%.2f", roundedBillAmount)
        self.tipAmountValue.text = String(format: "%.2f", roundedTipAmount)
        self.totalAmountValue.text = String(format: "%.2f", totalAmount)
    }
    @IBAction func themeToggled(_ sender: UISwitch, forEvent event: UIEvent) {
        setTheme(isDark: sender.isOn)
    }
    
    @IBAction func tipPercentageChanged(_ sender: UISegmentedControl, forEvent event: UIEvent) {
        calculate()
    }
    @IBAction func resetButtonTapped(_ sender: UIButton) {
        clear()
    }
    func clear() {
        billAmounttextField.text = nil
        tipPercentageSegmentControl.selectedSegmentIndex = 0
        tipAmountValue.text = "$0.00"
        totalAmountValue.text = "$0.00"
    }
    func setTheme(isDark: Bool) {
       
        let theme = isDark ? ColorTheme.dark : ColorTheme.light
        isDefaultStatusBar = theme.isDefaultStatusBar
        setNeedsStatusBarAppearanceUpdate()
           view.backgroundColor = theme.viewControllerBackgroundColor

     //      headerView.backgroundColor = theme.primaryColor
           titleLabel.textColor = theme.primaryTextColor

    //       inputCardView.backgroundColor = theme.secondaryColor

           billAmounttextField.tintColor = theme.accentColor
           tipPercentageSegmentControl.tintColor = theme.accentColor

         //  outputCardView.backgroundColor = theme.primaryColor
          // outputCardView.layer.borderColor = theme.accentColor.cgColor

           tipAmountTitle.textColor = theme.primaryTextColor
           totalAmountTitle.textColor = theme.primaryTextColor

           tipAmountValue.textColor = theme.outputTextColor
           totalAmountValue.textColor = theme.outputTextColor

           resetButton.backgroundColor = theme.secondaryColor
    }
}

