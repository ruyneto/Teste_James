//
//  UITests.swift
//  UITests
//
//  Created by Ruy de Ascencão Neto on 27/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import XCTest

class UITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_AlternanteTabs() {
        // UI tests must launch the application that they test.
        
        let app = XCUIApplication()
        let tabBarsQuery = app.tabBars
        tabBarsQuery.buttons["Beers"].tap()
        app.navigationBars["Cervejas do dia"].staticTexts["Cervejas do dia"].tap()
        tabBarsQuery.buttons["Procurar"].tap()
        app.navigationBars["Procurar Cerveja"].staticTexts["Procurar Cerveja"].tap()
     
    }
    
    func test_listBeers(){
        
        let app = XCUIApplication()
        app.tabBars.buttons["Beers"].tap()
        
        let cellsQuery = app.collectionViews.cells
        cellsQuery.otherElements.containing(.staticText, identifier:"Buzz").element.swipeLeft()
        
        let trashyBlondeElement = cellsQuery.otherElements.containing(.staticText, identifier:"Trashy Blonde").element
        trashyBlondeElement.tap()
        trashyBlondeElement.swipeLeft()
        app/*@START_MENU_TOKEN@*/.collectionViews.containing(.other, identifier:"Vertical scroll bar, 9 pages").element/*[[".collectionViews.containing(.other, identifier:\"Horizontal scroll bar, 9 pages\").element",".collectionViews.containing(.other, identifier:\"Vertical scroll bar, 9 pages\").element"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeLeft()
        cellsQuery.otherElements.containing(.staticText, identifier:"Berliner Weisse With Yuzu - B-Sides").element.swipeLeft()
        
        let pilsenLagerElement = cellsQuery.otherElements.containing(.staticText, identifier:"Pilsen Lager").element
        pilsenLagerElement.swipeLeft()
        pilsenLagerElement.swipeLeft()
        cellsQuery.otherElements.containing(.staticText, identifier:"Avery Brown Dredge").element.swipeLeft()
        
        let electricIndiaElement = cellsQuery.otherElements.containing(.staticText, identifier:"Electric India").element
        electricIndiaElement.swipeLeft()
        electricIndiaElement/*@START_MENU_TOKEN@*/.swipeLeft()/*[[".swipeUp()",".swipeLeft()"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
        cellsQuery.otherElements.containing(.staticText, identifier:"Fake Lager").element.swipeLeft()
        
        let bramlingXElement = cellsQuery.otherElements.containing(.staticText, identifier:"Bramling X").element
        bramlingXElement.swipeLeft()
        bramlingXElement.swipeLeft()
        
    }

    
    func testLaunchPerformance() {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTOSSignpostMetric.applicationLaunch]) {
                XCUIApplication().launch()
            }
        }
    }
}
