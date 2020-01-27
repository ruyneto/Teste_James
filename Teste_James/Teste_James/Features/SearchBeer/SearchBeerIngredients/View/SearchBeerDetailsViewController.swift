//
//  SearchBeerDetailsViewController.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 26/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import Foundation
import UIKit

class SearchBeerDetailsViewController:UIViewController{
    var beer:BeerDTO!
    var hops:[Hop]!
    var malt:[Malt]!
    let tableView = SearchBeerIngredientsView()
    init(beer:BeerDTO) {
        super.init(nibName: nil, bundle: nil)
        self.beer = beer
        self.view = tableView
        self.hops = beer.ingredients.hops
        self.malt = beer.ingredients.malt
        self.tableView.delegate = self
        self.tableView.dataSource = self
        loadNavigation()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension SearchBeerDetailsViewController{
    func loadNavigation(){
        self.navigationItem.title = beer.name
    }
}

extension SearchBeerDetailsViewController:UITableViewDelegate{
    
}

extension SearchBeerDetailsViewController:UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch(section){
            case 0:
                return hops.count
            case 1:
                return malt.count
            default:
                return 1;
        }
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        switch(section){
            case 0:
                return IngredientHeader(title:"Lúpulo")
            case 1:
                return IngredientHeader(title:"Malte")
            default:
                return IngredientHeader(title:"Fermento")
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .default, reuseIdentifier: "")
        switch(indexPath.section){
            case 0:
                 cell.textLabel!.text = self.hops[indexPath.row].name
            case 1:
                 cell.textLabel!.text = self.malt[indexPath.row].name
            default:
                cell.textLabel!.text  = self.beer.ingredients.yeast
        }
        return cell
    }
    
    
}
