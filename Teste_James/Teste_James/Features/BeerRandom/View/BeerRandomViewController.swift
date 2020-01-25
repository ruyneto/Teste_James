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
    let data = [1,2,3,4,5,6,7,8,9]
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
}

extension BeerRandomViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let sizeSquare = UIScreen.main.bounds.width/2.5
        return CGSize(width:sizeSquare, height: sizeSquare)
    }
}

extension BeerRandomViewController:UICollectionViewDataSource{

    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return self.data.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! BeerRandomCollectionViewCell
        cell.nameBeer.text = "\(self.data[indexPath.row])"
        return cell
    }
}
