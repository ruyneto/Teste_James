//
//  SearchTableView.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 26/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit
import Stevia

class SearchBeerTableView:UITableView{
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: .zero, style: .plain)
        self.register(SearchBeerTableViewCell.self, forCellReuseIdentifier: "cell")
        loadStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func loadStyle(){
        self.separatorStyle = .none
    }
}

class SearchBeerTableViewCell:UITableViewCell{
    var viewModel:SearchBeerCellViewModel!
    let cellView = PersonalizedSquareCellView(frame: .zero)
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
        loadSubviews()
        loadLayout()
        loadStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SearchBeerTableViewCell{
    func loadSubviews(){
        self.sv([cellView])
    }
    func loadLayout(){
        cellView.top(20).left(20).right(20).bottom(20)
    }
    func loadStyle(){
        self.selectionStyle = .none
    }
}

class PersonalizedSquareCellView:UIView{
    let imageView = UIImageView(frame: .zero)
    let labelName = UILabel(frame: .zero)
    override init(frame: CGRect) {
        super.init(frame: .zero)
        loadSubViews()
        loadLayout()
        loadStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension PersonalizedSquareCellView{
    func loadSubViews(){
        sv([imageView,labelName])
    }
    func loadLayout(){

        imageView.contentMode = .scaleAspectFit
        labelName.numberOfLines = 0
        layout(20,|-10-imageView.width(50)-20-labelName-10-|,10)
        
    }
    func loadStyle(){
        height(200)
        layer.cornerRadius = 10
        backgroundColor    = #colorLiteral(red: 0.900232682, green: 0.900232682, blue: 0.900232682, alpha: 1)
    }
}
