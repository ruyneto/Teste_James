//
//  SearchBeerDetailsView.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 26/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerIngredientsView:UITableView{
    init(){
        super.init(frame: .zero, style: .plain)
        loadSubviews()
        loadLayout()
        loadStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SearchBeerIngredientsView{
    func loadSubviews(){
    }
    func loadStyle(){
        self.backgroundColor = .white
    }
    func loadLayout(){

    }
}
