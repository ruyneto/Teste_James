//
//  RootNavigationController.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 24/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class RootNavigationController:UINavigationController{
    let rootController = RootViewController(nibName: nil, bundle: nil)
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        self.viewControllers = [rootController]
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RootNavigationController{
    
    
}
