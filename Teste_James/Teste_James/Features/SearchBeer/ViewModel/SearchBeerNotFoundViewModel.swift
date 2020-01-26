//
//  SearchBeerNotFoundViewModel.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerNotFoundViewModel{
    var imageBottle:UIImageView{
        let image     = UIImage(named: "beer")!
        let imageView = UIImageView(image: image)
        return imageView
    }
    var labelNotFound:UILabel{
        let label = UILabel(frame: .zero)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Infelizmente não foi encontrada nenhuma geladinha com esse nome."
        return label
    }
}
