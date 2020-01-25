//
//  Erros.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation

class Errors{
    var status:Status?
    var error :Any?
    var data  :Any?
}

enum Status{
    case success;
    case error;
}
