//
//  SanatanHinduCalendarUITests.swift
//  SanatanHinduCalendarUITests
//
//  Created by Harish Chander Setty Balachandran on 10/04/2016.
//  Copyright © 2016 RMIT. All rights reserved.
//

import XCTest

class SanatanHinduCalendarUITests: XCTestCase {
        
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
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        // Get a reference to your app
        //let app = XCUIApplication()
        
        // Test that the initial label text is what you expect
        //var string = app.staticTexts.elementMatchingType(.Any, identifier: "answer").label
        //XCTAssertEqual(string, "Think of a question, then click the button")
        
        // Test that there is only 1 image dispayed on the view
        // XCTAssertEqual(app.images.count, 1)
        
        // Test that there is only 1 button on the view
        
       // let app = XCUIApplication()
       // app.buttons["calendar"].tap()
       // app.buttons["home_comingsoon"].tap()
        //XCTAssertEqual(app.buttons.count, 5)
        
        // Tap the button
        //app.buttons["calendar"].tap()
        //app.buttons["home_comingsoon"].tap()
        
        //app.buttons["holyfestivals"].tap()
        //app.buttons["glimpseofhindutva"].tap()
        //app.buttons["sadhana"].tap()
        //app.buttons["muhurt"].tap()
        
        // Test that the label has changed as a result of tapping the button '
        // string = app.staticTexts.elementMatchingType(.Any, identifier: "answer").label
        // XCTAssertNotEqual(string,  "Think of a question, then click the button")
        
    }
    
    func testHomeScreen() {
        
        
        let app = XCUIApplication()
        let calendarButton = app.buttons["calendar"]
        calendarButton.tap()
        
        let homeComingsoonButton = app.buttons["home_comingsoon"]
        homeComingsoonButton.tap()
        app.buttons["holyfestivals"].tap()
        app.buttons["hanumanjayanthi"].tap()
        homeComingsoonButton.tap()
        calendarButton.tap()
        homeComingsoonButton.tap()
        app.buttons["muhurt"].tap()
        homeComingsoonButton.tap()
        app.buttons["sadhana"].tap()
        app.buttons["howtobehappy"].tap()
        app.buttons["sadhana_howtobehappy"].tap()
        app.buttons["purposeoflife"].tap()
        homeComingsoonButton.tap()
        
    }
    
    func testFestivals() {
        let festivals = XCUIApplication()
        festivals.buttons["holyfestivals"].tap()
        festivals.buttons["ramnavami"].tap()
        festivals.buttons["festivals_ramnavami"].tap()
        festivals.buttons["hanumanjayanthi"].tap()
        festivals.buttons["home_comingsoon"].tap()
    }
    
    
    func testSadhana(){
        let sadhana = XCUIApplication()
        sadhana.buttons["sadhana"].tap()
        sadhana.buttons["howtobehappy"].tap()
        sadhana.buttons["sadhana_howtobehappy"].tap()
        sadhana.buttons["home_sadhana"].tap()
        sadhana.buttons["sadhana"].tap()
        sadhana.buttons["purposeoflife"].tap()
        sadhana.buttons["home_comingsoon"].tap()

        
    }
}
