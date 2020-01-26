//
//  SearchTableView.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 26/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerTableView:UITableView{
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: .zero, style: .plain)
        self.register(SearchBeerTableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

class SearchBeerTableViewCell:UITableViewCell{
    var viewModel:SearchBeerCellViewModel!
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: .default, reuseIdentifier: reuseIdentifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
