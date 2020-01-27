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
    let nameBeer  = UILabel(frame: .zero)
    let imageView = UIImageView(frame: .zero)
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
        sv([imageView,nameBeer])
    }
    
    func loadLayout(){
        
        nameBeer.numberOfLines = 0
        nameBeer.top(10).left(10).right(10)
        imageView.centerInContainer()
        imageView.width(100).height(200)
        imageView.contentMode = .scaleAspectFit
    }
    
    func loadStyle(){
        self.backgroundColor = #colorLiteral(red: 1, green: 0.8379230929, blue: 0.6590386772, alpha: 1)
        layer.cornerRadius = 10
    }
    
}
