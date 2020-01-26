//
//  SearchBeerNetworkError.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerNetworkErrorView:UIView{
    var errorImage:UIImageView!
    var labelError:UILabel!
    var viewModel = SearchBeerNetworkErrorViewModel()
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

extension SearchBeerNetworkErrorView{
    func loadSubviews(){
        errorImage = viewModel.imageError
        labelError = viewModel.labelError
        sv([errorImage,labelError])
    }
    func loadLayout(){
        errorImage.centerVertically(-50)
        errorImage.centerHorizontally()
        labelError.centerHorizontally()
        labelError.centerVertically(50)
        labelError.left(10).right(10)
    }
    func loadStyle(){
        backgroundColor = .white
    }
}
