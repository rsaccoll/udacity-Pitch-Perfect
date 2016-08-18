//
//  RecordScreen.swift
//  Pitch Perfect
//
//  Created by Ramses Jose Sacol de Almeida on 8/11/16.
//  Copyright © 2016 Isobar. All rights reserved.
//

import XCTest

class RecordScreen {
    
    var app: XCUIApplication!
    
    init(testApp: XCUIApplication) {
        
        app = testApp
    }
    
    
    func tapRecordButton() {
        app.buttons["record"].tap()
    }
    
    func tapButtonByName(stuff: String){
        app.buttons[stuff].tap()
    }
    
    func tapStopButton() {
        app.buttons["stop"].tap()
    }
    
    func verifIsPresenting() {
        XCTAssert(app.staticTexts["Recording"].exists)
        //recording
    }
    


}
