//
//  SearchBeerNetworkErrorViewModel.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerNetworkErrorViewModel{
    var imageError:UIImageView{
        let image     = UIImage(named: "OPA!")!
        let imageView = UIImageView(image: image)
        return imageView
    }
    var labelError:UILabel{
        let label = UILabel(frame: .zero)
        label.numberOfLines = 0
        label.textAlignment = .center
        label.text = "Houve um erro de conexão, beba uma cervejinha e tente novamente daqui a pouco."
        return label
    }
}
