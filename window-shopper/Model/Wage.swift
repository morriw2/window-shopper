//
//  Wage.swift
//  window-shopper
//
//  Created by Billy Morris on 8/30/17.
//  Copyright © 2017 Billy Morris. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(wage: Double, price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
