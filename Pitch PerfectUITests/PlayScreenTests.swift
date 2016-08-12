//
//  PlayScreenTests.swift
//  Pitch Perfect
//
//  Created by Ramses Jose Sacol de Almeida on 8/12/16.
//  Copyright © 2016 Isobar. All rights reserved.
//

import XCTest

class PlayScreenTests: XCTestCase {
    
    
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
}
