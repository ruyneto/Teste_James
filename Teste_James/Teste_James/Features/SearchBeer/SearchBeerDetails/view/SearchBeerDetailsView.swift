//
//  SearchBeerDetailsView.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 26/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerDetailsView:UIView{
    let buttonIngredients = UIButton(frame: .zero)
    override init(frame: CGRect) {
        super.init(frame: .zero)
        loadSubviews()
        loadStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SearchBeerDetailsView{
    func loadStyle(){
        self.backgroundColor = .white
    }
}
