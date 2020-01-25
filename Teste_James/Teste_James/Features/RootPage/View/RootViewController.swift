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
    let rootView  = RootView()
    let viewModel = RootViewModel()
    let data = [1,2,3,4,5,6,7,8,9]
    override init(nibName: String?, bundle: Bundle?){
        super.init(nibName: nil, bundle: nil)
        self.view = rootView
        loadNavigation()
        self.rootView.table.delegate = self
        self.rootView.table.dataSource = self
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension RootViewController{
    func loadNavigation(){
        self.navigationItem.title = viewModel.title
    }
}

extension RootViewController:UITableViewDelegate{
    
}

extension RootViewController:UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        cell.textLabel?.text = "\(data[indexPath.row])"
        return cell
    }
    
    
}
