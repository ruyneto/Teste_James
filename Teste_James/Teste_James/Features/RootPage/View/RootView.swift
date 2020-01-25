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
    let label = UILabel(frame: .zero)
    override init(frame: CGRect) {
        super.init(frame: frame)
        loadSubviews()
        loadLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RootView{
    func loadSubviews(){
        
    }
    
    func loadLayout(){
        
    }
}
