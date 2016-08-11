//
//  RecordScreenTests.swift
//  Pitch Perfect
//
//  Created by Ramses Jose Sacol de Almeida on 8/11/16.
//  Copyright © 2016 Isobar. All rights reserved.
//

import XCTest

class RecordScreenTests: XCTestCase {
    
    let app = XCUIApplication()
    var recordScreen: RecordScreen!
    var playScreen: PlayScreen!
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
        app.launch()
        recordScreen = RecordScreen(testApp: app)
        playScreen = PlayScreen(testApp: app)
        
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testOpenRecordScreen() {
        recordScreen.tapRecordButton()
        recordScreen.verifIsPresenting()
        recordScreen.tapStopButton()
        playScreen.tapOptionButton("Back")
        recordScreen.tapRecordButton()


    }
    
    func testOpenPlayScreen() {
        
        recordScreen.tapRecordButton()
        recordScreen.tapStopButton()
        playScreen.verifyIfExist("SnailButton")
        playScreen.verifyIfExist("RabbitButton")
        playScreen.verifyIfExist("ChipmunkButton")
        playScreen.verifyIfExist("DarthVaderButton")
        playScreen.verifyIfExist("EchoButton")
        playScreen.verifyIfExist("ReverbButton")
        playScreen.tapOptionButton("Back")
        
    }

    }
