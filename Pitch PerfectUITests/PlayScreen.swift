//
//  PlayScreen.swift
//  Pitch Perfect
//
//  Created by Ramses Jose Sacol de Almeida on 8/11/16.
//  Copyright © 2016 Isobar. All rights reserved.
//

import XCTest

class PlayScreen {
    
    var app: XCUIApplication!
    var recording: XCUIElement!
    var stopping: XCUIElement!
    
    init(testApp: XCUIApplication) {
        
        app = testApp
    }
    
 
    func tapOptionButton(op: String) {
        app.buttons[op].tap()
    }
    
    func verifyIfExist(stuff: String) {
        XCTAssert(app.buttons[stuff].exists)
    }

}
