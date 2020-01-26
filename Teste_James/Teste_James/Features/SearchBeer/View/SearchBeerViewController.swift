//
//  SearchBeerViewController.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 25/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerViewController:UIViewController{
    //let searchBeerView = SearchBeerView()
    let searchBeerView = SearchBeerSearchingView()
    let searchBar      = UISearchBar()
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
        loadTitleView()
        loadViews()
        loadDelegates()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SearchBeerViewController{
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.searchBar.resignFirstResponder()
    }
    
    func loadDelegates(){
        self.searchBar.delegate = self
    }
    func loadViews(){
        self.view = searchBeerView
    }
    @objc func loadSearchBar(){
        self.navigationItem.titleView = searchBar
                self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Fechar", style: .plain, target: self, action: #selector(loadTitleView))
    }
    
    @objc func loadTitleView(){
        self.navigationItem.titleView = nil
        self.navigationItem.title = "Procurar Cerveja"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Procurar", style: .plain, target: self, action: #selector(loadSearchBar))
    }
}

extension SearchBeerViewController:UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.searchBar.resignFirstResponder()
    }
}
