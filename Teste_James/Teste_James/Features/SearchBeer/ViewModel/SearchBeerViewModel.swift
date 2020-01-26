//
//  SearchBeerViewModel.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerViewModel{
    var helloLabel:UILabel{
        let label = UILabel()
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Olá amigo de copo, digite o nome de uma geladinha."
        return label
    }
}
