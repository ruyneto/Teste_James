//
//  IngredientHeader.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 26/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class IngredientHeader:UIView{
    var labelName:UILabel!
    var viewModel:IngredientHeaderViewModel!
    init(title:String){
        super.init(frame: .zero)
        viewModel = IngredientHeaderViewModel(title: title)
        loadSubView()
        loadLayout()
        loadStyle()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension IngredientHeader{
    func loadSubView(){
        labelName = viewModel.labelTitle
        sv([labelName])
    }
    func loadLayout(){
        labelName.centerInContainer()
        height(50)
    }
    func loadStyle(){
        backgroundColor = #colorLiteral(red: 1, green: 0.6623769441, blue: 0.4834560986, alpha: 1)
    }
}
