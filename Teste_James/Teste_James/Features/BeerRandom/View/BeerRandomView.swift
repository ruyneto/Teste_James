//
//  Root.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 24/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class BeerRandomView:UIView{
    let label = UILabel(frame: .zero)
    let collection = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
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

extension BeerRandomView{
    func loadSubviews(){
        self.sv([collection])
    }
    
    func loadLayout(){
        collection.top(0).left(0).right(0).bottom(0)
    }
    
    func loadStyle(){
        self.collection.backgroundColor = .white
    }
}
