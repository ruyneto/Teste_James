//
//  SearchBeerDetailsViewController.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 26/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerDetailsViewController:UIViewController{
    var beer:BeerDTO!
    init(beer:BeerDTO) {
        super.init(nibName: nil, bundle: nil)
        self.beer = beer
        loadNavigation()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SearchBeerDetailsViewController{
    func loadNavigation(){
        self.navigationItem.title = beer.name
    }
    
}
