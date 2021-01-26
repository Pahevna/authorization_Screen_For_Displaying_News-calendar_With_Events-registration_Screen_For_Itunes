//
//  DetailPresenter.swift
//  task3
//
//  Created by mac on 19.01.2021.
//

import Foundation

protocol DetailViewProtocol: class {
    func succes()
    func failure(error: Error)
}

protocol DetailPresenterProtocol: class {
    init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol)
    func getNews()
    var news: [News]? { get set }
}

class DetailPresenter: DetailPresenterProtocol {
    weak var view: DetailViewProtocol?
    var router: RouterProtocol?
    let networkService: NetworkServiceProtocol!
    var news: [News]?
  
    required init(view: DetailViewProtocol, networkService: NetworkServiceProtocol,
                  router: RouterProtocol) {
        self.view = view
        self.networkService = networkService
        self.router = router
        getNews()
    }
    
    func getNews() {
        networkService.getNews { [weak self] result in
            guard let self = self else { return }
            DispatchQueue.main.async {
                switch result {
                case .success(let news):
                    self.news = news?.results
                    self.view?.succes()
                case .failure(let error):
                    self.view?.failure(error: error)
                }
            }
        }
    }
}
