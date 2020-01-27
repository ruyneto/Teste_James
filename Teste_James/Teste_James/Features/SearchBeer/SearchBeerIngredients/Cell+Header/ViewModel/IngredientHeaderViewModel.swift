//
//  IngredientHeaderViewModel.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 26/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class IngredientHeaderViewModel{
    var title:String!
    var labelTitle:UILabel{
        let label  = UILabel(frame: .zero)
        label.text = title
        return label
    }
    init(title:String){
        self.title = title
    }
}
