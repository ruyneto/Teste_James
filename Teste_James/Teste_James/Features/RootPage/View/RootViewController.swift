//
//  ViewController.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 24/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import UIKit
import Stevia
class RootViewController: UIViewController {
    let mainView = RootView()
    override init(nibName: String?, bundle: Bundle?){
        super.init(nibName: nil, bundle: nil)
        self.view = mainView
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}



