//
//  SearchBeerSearchingView.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerSearchingView:UIView{
    let viewModel = SearchBeerSearchingViewModel()
    var spinner:UIActivityIndicatorView!
    var labelSearching:UILabel!
    override init(frame: CGRect) {
        super.init(frame: .zero)
        loadSubviews()
        loadLayout()
        loadStyle()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SearchBeerSearchingView{
    func loadSubviews(){
        spinner = viewModel.spinner
        labelSearching = viewModel.label
        sv([spinner,labelSearching])
    }
    func loadLayout(){
        spinner.centerVertically(-50)
        spinner.centerHorizontally()
        labelSearching.centerHorizontally()
        labelSearching.centerVertically(50)
        labelSearching.left(10).right(10)
    }
    func loadStyle(){
        backgroundColor = .white
    }
}
