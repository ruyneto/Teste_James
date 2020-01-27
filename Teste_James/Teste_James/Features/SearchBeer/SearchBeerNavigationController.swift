//
//  SearchBeerNavigationController.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit


class SearchBeerNavigationController:UINavigationController{
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        loadTabBarDefinition()
        loadChildViewControllers()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

extension SearchBeerNavigationController{
    func loadTabBarDefinition(){
        self.tabBarItem.title = "Procurar"
         self.tabBarItem.image = UIImage(named: "search")
    }
    
    func loadChildViewControllers(){
        self.viewControllers = [SearchBeerViewController()]
    }
}
