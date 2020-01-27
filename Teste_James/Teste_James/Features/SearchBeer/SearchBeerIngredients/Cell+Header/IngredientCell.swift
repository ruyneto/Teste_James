//
//  IngredientCell.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 26/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class IngredientCell:UITableViewCell{
    var view = IngredientViewCell()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        loadSubviews()
        loadLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension IngredientCell{
    func loadSubviews(){
        sv([view])
    }
    func loadLayout(){
        view.top(10).left(10).right(10).bottom(10)
    }
}

class IngredientViewCell:UIView{
    var viewModel = IngredientCellViewModel()
    var labelName: UILabel?
    init(){
        super.init(frame: .zero)
        loadSubviews()
        loadLayout()
        loadStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension IngredientViewCell{
    func loadSubviews(){
        labelName = viewModel.label
        sv([labelName!])
    }
    func loadLayout(){
        labelName?.centerInContainer()
        height(100)
    }
    func loadStyle(){
        layer.cornerRadius = 10
        backgroundColor = #colorLiteral(red: 1, green: 0.848393838, blue: 0.6532217658, alpha: 1)
    }
}
