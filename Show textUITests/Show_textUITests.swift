//
//  Show_textUITests.swift
//  Show textUITests
//
//  Created by Alexander Morenov on 06/02/2018.
//  Copyright © 2018 Alexander Morenov. All rights reserved.
//

import XCTest

class Show_textUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        XCUIApplication().terminate()
       
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testShowButton() {
            let app = XCUIApplication()
            app.buttons["Show"].tap()
            let labelObject = app.staticTexts.element(matching:.any, identifier: "lableTextId")
            let labelText = labelObject.label
            XCTAssertEqual("Ты молодец!", labelText)
    }
    
    func testHideButton() {
        let app = XCUIApplication()
        app.buttons["Show"].tap()
        app.buttons["Hide"].tap()
        XCTAssertEqual("Show text", app.staticTexts.element(matching:.any, identifier: "lableTextId").label)
    }
    
    func testShowButtonNegative() {
        let app = XCUIApplication()
        app.buttons["Show"].tap()
        XCTAssertNotEqual("плохой", app.staticTexts.element(matching:.any, identifier: "lableTextId").label)
    }
    
    func testHideButtonNegative() {
        let app = XCUIApplication()
        app.buttons["Show"].tap()
        app.buttons["Hide"].tap()
        XCTAssertNotEqual("Show", app.staticTexts.element(matching:.any, identifier: "lableTextId").label)
    }
    
    func testSwitchIs()  {
        let app = XCUIApplication()
        app.switches["0"].tap()
        XCTAssertEqual("Да, я хороший!", app.staticTexts.element(matching:.any, identifier: "confirmLabelId").label )
        app.switches["1"].tap()
        XCTAssertNotEqual("Да, я хороший!", app.staticTexts.element(matching:.any, identifier: "confirmLabelId").label )
    }
}
