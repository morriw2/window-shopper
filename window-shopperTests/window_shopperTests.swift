//
//  window_shopperTests.swift
//  window-shopperTests
//
//  Created by Billy Morris on 8/30/17.
//  Copyright © 2017 Billy Morris. All rights reserved.
//

import XCTest

class window_shopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
        
    }
    
    func test() {
        XCTAssert(Wage.getHours(wage: 25, price: 100) == 4)
        XCTAssert(Wage.getHours(wage: 15.50, price: 250.53) == 17)
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
   
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
