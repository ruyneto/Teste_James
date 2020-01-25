//
//  BeerTableViewCell.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 24/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class BeerRandomCollectionViewCell:UICollectionViewCell{
    let nameBeer = UILabel(frame: .zero)

    override init(frame: CGRect) {
        super.init(frame: .zero)
        loadSubView()
        loadLayout()
        loadStyle()
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BeerRandomCollectionViewCell{
    func loadSubView(){
        sv([nameBeer])
    }
    
    func loadLayout(){
        nameBeer.centerInContainer()
    }
    
    func loadStyle(){
        self.backgroundColor = .red
        self.nameBeer.centerInContainer()
    }
    
}
