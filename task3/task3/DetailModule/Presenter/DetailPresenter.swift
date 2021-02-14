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
    func searchNews(searchedText: String)
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
    }
    
    func getNews() {
        networkService.getNews { [weak self] result in
            guard let self = self else { return }
            DispatchQueue.main.async {
                switch result {
                case .success(let dataResponse):
                    print(dataResponse ?? "no data")
                    self.news = dataResponse
                    self.view?.succes()
                case .failure(let error):
                    self.view?.failure(error: error)
                }
            }
        }
    }
    
    func searchNews(searchedText: String) {
        let searchedNews = news?.filter({ (news: News) -> Bool in
            //возвращает новое множество, содержащее элементы, удовлетворяющие условию
            if news.webTitle.lowercased().contains(searchedText.lowercased()) {
                // Returns a Boolean value indicating whether the sequence contains the given element
                // проверяем, содержит ли webTitle с нижнем регистром текст, введенный в строку поиска
                return true
            }
            return false
        })
        news = searchedNews
        self.view?.succes()
    }
}
