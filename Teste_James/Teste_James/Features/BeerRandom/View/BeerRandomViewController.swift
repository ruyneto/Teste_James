//
//  ViewController.swift
//  Teste_James
//
//  Created by Ruy de Ascencão Neto on 24/01/20.
//  Copyright © 2020 Academy. All rights reserved.
//

import UIKit
import Stevia
class BeerRandomViewController: UIViewController {
    let rootView  = BeerRandomView()
    let viewModel = RootViewModel()
    var dataList:[BeerDTO] = []
    override init(nibName: String?, bundle: Bundle?){
        super.init(nibName: nil, bundle: nil)
        self.view = rootView
        loadNavigation()
        self.rootView.collection.delegate = self
        self.rootView.collection.dataSource = self
        self.rootView.collection.register(BeerRandomCollectionViewCell.self, forCellWithReuseIdentifier: "cell")
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}

extension BeerRandomViewController{
    func loadNavigation(){
        self.navigationItem.title = viewModel.title
    }
    override func viewWillAppear(_ animated: Bool) {
        refresh()
    }
    
    func refresh() {
        self.view = SearchBeerSearchingView()
        BeersService.getBeersPagination(page: 1, quantity: 10){dataResponse,response,erro in
            guard erro == nil else{
                           self.view = SearchBeerNetworkErrorView()
                           return
                       }
            do{
                self.dataList = try JSONDecoder().decode([BeerDTO].self, from: dataResponse!)
                DispatchQueue.main.async {
                    self.view = self.rootView
                     self.rootView.collection.reloadData()
                }
            }catch{
                self.view = SearchBeerNetworkErrorView()
            }
        }
    }
}

extension BeerRandomViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:UIScreen.main.bounds.width/1.2, height: UIScreen.main.bounds.height/1.5)
    }
}

extension BeerRandomViewController:UICollectionViewDataSource{

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.dataList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let vm = BeerCellViewModel(beer: self.dataList[indexPath.row])
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BeerRandomCollectionViewCell
        cell.nameBeer.text   =  "\(self.dataList[indexPath.row].name)"
        cell.imageView.image = vm.image
        return cell
    }
}
