//
//  DetailViewController.swift
//  task3
//
//  Created by mac on 20.01.2021.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var detailPresenter: DetailPresenterProtocol? 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "News"
        
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(UINib(nibName: "DetailCollectionViewCell", bundle: nil),
                                forCellWithReuseIdentifier: "cell")
    }
}

extension DetailViewController: UICollectionViewDelegate,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return detailPresenter?.news?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! DetailCollectionViewCell
        let cellData = detailPresenter?.news?[indexPath.item]
        cell.setDataToCell(sectionName: cellData?.sectionName ?? "", webTitle: cellData?.webTitle ?? "", webPublicationDate: cellData?.webPublicationDate ?? "", controller: self)
        
        return cell
    }
}

extension DetailViewController: DetailViewProtocol {
    
    func succes() {
        collectionView.reloadData()
    }
    
    func failure(error: Error) {
        let alert = UIAlertController(title: "Warning!", message: "Error: \(error.localizedDescription)", preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
