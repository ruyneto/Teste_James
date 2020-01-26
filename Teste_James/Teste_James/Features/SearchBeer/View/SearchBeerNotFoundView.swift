//
//  SearchBeerNotFound.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerNotFoundView:UIView{
    let viewModel   = SearchBeerNotFoundViewModel()
    var label       : UILabel!;
    var imageBottle : UIImageView!;
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

extension SearchBeerNotFoundView{
    func loadSubviews(){
        imageBottle = viewModel.imageBottle
        label       = viewModel.labelNotFound
        sv([imageBottle,label])
    }
    func loadLayout(){
        imageBottle.centerVertically(-50)
        imageBottle.centerHorizontally()
        label.centerHorizontally()
        label.centerVertically(50)
        label.left(10).right(10)
    }
    func loadStyle(){
        backgroundColor = .white
    }
}
