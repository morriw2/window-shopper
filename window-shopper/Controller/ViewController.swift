//
//  ViewController.swift
//  window-shopper
//
//  Created by Billy Morris on 8/30/17.
//  Copyright © 2017 Billy Morris. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var wageField: CurrencyField!
    @IBOutlet weak var priceField: CurrencyField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        wageField.inputAccessoryView = calcBtn
        priceField.inputAccessoryView = calcBtn
        
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
    }
    
    @objc func calculate() {
        if let wage = wageField.text, let price = priceField.text {
            if let w = Double(wage), let p = Double(price) {
                view.endEditing(true)
                resultLabel.isHidden = false
                hoursLabel.isHidden = false
                resultLabel.text = "\(Wage.getHours(wage: w, price: p))"
            }
        }
    }

    @IBAction func clearCalcPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hoursLabel.isHidden = true
        wageField.text = ""
        priceField.text = ""
        
    }


}

