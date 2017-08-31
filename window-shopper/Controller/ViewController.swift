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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(ViewController.calculate), for: .touchUpInside)
        
        wageField.inputAccessoryView = calcBtn
        priceField.inputAccessoryView = calcBtn
    }
    
    @objc func calculate() {
        
        print("Calculate Pressed")
    }

    


}

