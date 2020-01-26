//
//  Constants.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation

struct Constants{
    static let rootUrl  = "https://api.punkapi.com/v2/"
    static let beersUrl = Constants.rootUrl+"beers"
    static func pagination(per_page:Int,page:Int)->String{
        return "\(Constants.beersUrl)?page=\(page)&per_page=\(per_page)";
    }
    static func getBeerByName(name:String)->String{
        let convertedName = name.replacingOccurrences(of: " ", with: "_")
        return "\(Constants.beersUrl)?beer_name=\(convertedName)"
    }
}
