//
//  BeerCellViewModel.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit
class BeerCellViewModel{
    var beer:BeerDTO?
    var name:String{
        return beer!.name
    }
    var tagLine:String{
        return beer!.tagline
    }
    var image:UIImage{
        do{
            let url = URL(string: beer!.imageURL)
            let data = try Data(contentsOf: url!)
            return UIImage(data: data)!
        }
        catch{
            return UIImage(named: "")!
        }

    }
    init(beer:BeerDTO){
        self.beer = beer
    }
}
