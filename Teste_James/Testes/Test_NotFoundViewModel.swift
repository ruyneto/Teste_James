//
//  Test_NotFoundViewModel.swift
//  Testes
//
//  Created by Ruy de Ascencão Neto on 27/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import XCTest

class Test_NotFoundViewModel: XCTestCase {
    var viewModel:SearchBeerNotFoundViewModel?
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        viewModel = SearchBeerNotFoundViewModel()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testImage() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(viewModel?.imageBottle.image?.pngData() == UIImage(named: "beer")?.pngData())
    }
    
    func testLabel(){
        XCTAssertTrue(viewModel?.labelNotFound.text == "Infelizmente não foi encontrada nenhuma geladinha com esse nome.")
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
