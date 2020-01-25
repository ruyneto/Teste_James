//
//  RootTabBarController.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class RootTabBarController:UITabBarController{
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        setChildren()
    }
    
    func setChildren(){
        self.viewControllers = [BeerRandomNavigationController(nibName: nil, bundle: nil),SearchBeerNavigationController(nibName: nil, bundle: nil)]
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
