//
//  SearchBeerSearchingViewModel.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerSearchingViewModel{
    var spinner:UIActivityIndicatorView{
        let spinner = UIActivityIndicatorView(style: .large)
        spinner.isHidden = false
        spinner.startAnimating()
        return spinner
    }
    var label:UILabel{
        let label  = UILabel(frame: .zero)
        label.text = "Pesquisando..."
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }
}
