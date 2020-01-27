//
//  SearchBeerDetailsViewModel.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 26/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerIngredientsViewModel{
    var button:UIButton{
        let button = UIButton(frame: .zero)
        button.backgroundColor = #colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1)
        button.layer.cornerRadius = 5
        button.text("Ingredientes")
        return button
    }
}
