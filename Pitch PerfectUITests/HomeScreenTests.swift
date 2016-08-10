//
//  HomeScreenTests.swift
//  Pitch Perfect
//
//  Created by Ramses Jose Sacol de Almeida on 8/10/16.
//  Copyright © 2016 Isobar. All rights reserved.
//
import Foundation
import XCTest

class HomeScreenTests: XCTestCase {
    
    let app = XCUIApplication()
    var homScreen: HomeScreen!
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    

    
    
    func pressRecord() {
        XCTAssert(homScreen.allLoaded())
        homScreen.tapSomething()
    }
    
 

}
