//
//  Test_SearchBeerCellViewModel.swift
//  Testes
//
//  Created by Ruy de Ascencão Neto on 27/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import XCTest

class Test_SearchBeerCellViewModel: XCTestCase {
    var viewModel:SearchBeerCellViewModel?
    let nameBeer = "Tokyo"
    let tagLane  = "Tokyo tagline"
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let beer  = BeerDTO(id: 1, name: nameBeer, tagline: "Tokyo tagline", firstBrewed: nil, welcomeDescription: nil, imageURL: "https://www.hostgator.com.br/blog/wp-content/uploads/2018/04/teste-ab-e-por-que-comecar-a-usar-blog.png", abv: nil, ibu: nil, targetFg: nil, targetOg: nil, ebc: nil, srm: nil, ph: nil, attenuationLevel: nil, volume: nil, boilVolume: nil, method: nil, ingredients: nil, foodPairing: nil, brewersTips: nil, contributedBy: nil)
        viewModel = SearchBeerCellViewModel(beer: beer)
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testName() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        XCTAssertTrue(nameBeer==viewModel?.name)
    }

    func testTagline(){
        XCTAssertTrue(tagLane == viewModel?.tagLine)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
