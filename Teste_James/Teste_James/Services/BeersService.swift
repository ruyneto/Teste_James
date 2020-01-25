//
//  BeersService.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation

struct BeersService{
    static func getBeersPagination(page:Int,quantity:Int,completion:@escaping (Data?,URLResponse?,Error?)->Void){
        guard let url = URL(string: Constants.pagination(per_page: quantity, page: page)) else { return  }
        let request = URLRequest(url: url)
        URLSession(configuration: URLSessionConfiguration.default).dataTask(with: request, completionHandler: completion).resume()

    }
}
