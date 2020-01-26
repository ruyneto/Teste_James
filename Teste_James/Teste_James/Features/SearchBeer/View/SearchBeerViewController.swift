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
    let tableView      = SearchBeerTableView()
    let searchBeerView = SearchBeerView()
    let searchBar      = UISearchBar()
    let searchingView  = SearchBeerSearchingView(frame: .zero)
    let searchError    = SearchBeerNetworkErrorView(frame: .zero)
    var data : [BeerDTO] = []
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
        self.searchBar.delegate   = self
        self.tableView.dataSource = self
        self.tableView.delegate   = self
    }
    func loadViews(){
        self.view = searchBeerView
    }
    func loadSearchBar(){
        self.navigationItem.titleView = searchBar
                self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Fechar", style: .plain, target: self, action: #selector(loadTitleView))
    }
    
    @objc func loadTitleView(){
        self.navigationItem.titleView = nil
        self.navigationItem.title = "Procurar Cerveja"
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Procurar", style: .plain, target: self, action: #selector(cancelSearchingAction))
    }
    
    @objc func cancelSearchingAction(){
        loadSearchBar()
        self.view = searchBeerView
    }
}

extension SearchBeerViewController:UISearchBarDelegate{
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        self.searchBar.resignFirstResponder()
        self.view = searchingView
        BeersService.getBeersByString(name: searchBar.text!){
                data,response,error in
                guard error == nil else{
                    DispatchQueue.main.async {
                        self.view = self.searchError
                    }
                    return
                }
                DispatchQueue.main.async {
                    do{
                        let list = try JSONDecoder().decode([BeerDTO].self, from: data!)
                        self.data = list
                        if(list.count>0){
                            self.tableView.reloadData()
                            self.view = self.tableView
                        }else{
                            self.view = SearchBeerNotFoundView()
                        }
                    }catch{
                        self.view = self.searchError
                    }
                }
            }
    }
}

extension SearchBeerViewController:UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let choosenBeer  = SearchBeerDetailsViewController(beer: data[indexPath.row])
        self.navigationController?.pushViewController(choosenBeer, animated: true)
    }
}

extension SearchBeerViewController:UITableViewDataSource{

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! SearchBeerTableViewCell
            cell.viewModel = SearchBeerCellViewModel(beer: data[indexPath.row])
            cell.cellView.labelName.text = cell.viewModel.name
            cell.cellView.imageView.image = cell.viewModel.image
            cell.cellView.labeltagLine.text = cell.viewModel.tagLine
            return cell
    }
    
    
}
