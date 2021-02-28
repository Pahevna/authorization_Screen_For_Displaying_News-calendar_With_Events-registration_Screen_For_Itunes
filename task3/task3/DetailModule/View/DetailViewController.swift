//
//  DetailViewController.swift
//  task3
//
//  Created by mac on 20.01.2021.
//

import UIKit

class DetailViewController: UIViewController {

    // MARK: - IBOutlet
    
    @IBOutlet private weak var collectionView: UICollectionView!
    
    // MARK: - Public Property
    
    var detailPresenter: DetailPresenterProtocol?
    
    // MARK: - Private Property
    
    private let searchController = UISearchController(searchResultsController: nil)
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "News"
        
        setupSearchBar()
        setupCollectionView()
        detailPresenter?.getNews()
    }
    
    // MARK: - Private Methods
    
    private func setupSearchBar() {
        navigationItem.searchController = searchController
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search news"
        searchController.searchBar.delegate = self 
    }
    
    private func setupCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.register(DetailCollectionViewCell.self,
                                forCellWithReuseIdentifier: DetailCollectionViewCell.identifier)
    }
}

// MARK: - DetailViewProtocol

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

// MARK: - Collection View Data Source

extension DetailViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return detailPresenter?.news?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DetailCollectionViewCell.identifier, for: indexPath) as! DetailCollectionViewCell
        let cellData = detailPresenter?.news?[indexPath.item]
        let convertString = cellData?.webPublicationDate?.dateFromISOstringToddMMyyyy(date: cellData?.webPublicationDate ?? "")
        
        cell.setDataToCell(sectionName: cellData?.sectionName ?? "sectionName", webTitle: cellData?.webTitle ?? "title", webPublicationDate: convertString ?? "date", controller: self)
        return cell
    }
    
  func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {

   guard let arrayNews = detailPresenter?.news else { return }
    
    if indexPath.row == arrayNews.count - 1 {
        detailPresenter?.getMoreNews()
    }
  }
}

// MARK: - Collection View Delegate Flow Layout

extension DetailViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 100)
    }
}

// MARK: - Search Bar Deleagate

extension DetailViewController: UISearchBarDelegate {
    
    func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
        if let searchText = searchController.searchBar.text {
            if searchText.count > 0 {
                detailPresenter?.searchNews(searchedText: searchText)
            }
        }
    }
    
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        detailPresenter?.getNews()
    }
}
