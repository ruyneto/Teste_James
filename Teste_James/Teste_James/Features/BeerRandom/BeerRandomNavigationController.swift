//
//  RootNavigationController.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 24/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class BeerRandomNavigationController:UINavigationController{
    let rootController = BeerRandomViewController(nibName: nil, bundle: nil)
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        loadViewControllers()
        loadTabBarDefinitions()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension BeerRandomNavigationController{
    func loadViewControllers(){
        self.viewControllers = [rootController]
    }
    func loadTabBarDefinitions(){
        self.tabBarItem.title = "Beers"
    }
}
