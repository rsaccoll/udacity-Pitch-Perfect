//
//  HomeScreen.swift
//  Pitch Perfect
//
//  Created by Ramses Jose Sacol de Almeida on 8/10/16.
//  Copyright © 2016 Isobar. All rights reserved.
//
import Foundation
import XCTest

class HomeScreen: Loadable {
    
    var app : XCUIApplication!
    var stopButton : XCUIElement!
    var recordButton : XCUIElement!
    
    init(testApp: XCUIApplication) {
        app = testApp
        stopButton = app.buttons["stopButton"]
        recordButton = app.buttons["recordButton"]
        
    }
    
    func allLoaded() -> Bool {
        return app.exists

    }
    
    func tapSomething() {
        app.buttons["recordButton"].tap()
    }
        
 
    
}
