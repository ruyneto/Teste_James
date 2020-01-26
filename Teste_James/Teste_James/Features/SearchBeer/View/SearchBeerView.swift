//
//  SearchBeerView.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerView:UIView{
    let resultTableView  = UITableView()
    let labelProcurar    = UILabel(frame: .zero)
    override init(frame: CGRect) {
        super.init(frame: .zero)
        loadSubviews()
        loadLayouts()
        loadStyles()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SearchBeerView{
    func loadSubviews(){
        self.sv([resultTableView,labelProcurar])
        labelProcurar.text = "Olá amigo de copo, digite o nome de uma geladinha para procurarmos juntos."
    }
    func loadLayouts(){
        resultTableView.isHidden = true
        resultTableView.top(0).bottom(0).left(0).right(0)
        labelProcurar.centerInContainer()
        labelProcurar.left(20).right(20)
        labelProcurar.numberOfLines = 0
    }
    func loadStyles(){
        self.backgroundColor = .white
    }
}
