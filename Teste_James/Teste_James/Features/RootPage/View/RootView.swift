//
//  Root.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 24/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class RootView:UIView{
    let table = UITableView(frame: .zero)
    let label = UILabel(frame: .zero)
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadSubviews()
        loadLayout()
        loadStyle()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RootView{
    func loadSubviews(){
        self.sv([label,table])
    }
    
    func loadLayout(){
        table.top(0).left(0).right(0).bottom(0)
    }
    
    func loadStyle(){
        self.backgroundColor = .white
    }
}
