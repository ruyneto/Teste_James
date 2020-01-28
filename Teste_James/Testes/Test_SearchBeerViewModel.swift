//
//  Test_SearchBeerViewModel.swift
//  Testes
//
//  Created by Ruy de Ascencão Neto on 27/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import XCTest

class Test_SearchBeerViewModel: XCTestCase {
    var viewModel:SearchBeerViewModel?
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewModel = SearchBeerViewModel()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testLabel() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        XCTAssertTrue(viewModel?.helloLabel.text == "Olá amigo de copo, digite o nome de uma geladinha.")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
