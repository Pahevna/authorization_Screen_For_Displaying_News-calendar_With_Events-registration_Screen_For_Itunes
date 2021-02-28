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
    func getMoreNews()
    func searchNews(searchedText: String)
    var news: [News]? { get set }
}

class DetailPresenter: DetailPresenterProtocol {
    
    // MARK: - Public Properties
    
    weak var view: DetailViewProtocol?
    let networkService: NetworkServiceProtocol!
    var router: RouterProtocol?
    var news: [News]?
    
    // MARK: - Private Properties
    
    private var currentPage = 0
    private var isLoading = false
  
    // MARK: - Initialization
    
    required init(view: DetailViewProtocol, networkService: NetworkServiceProtocol,
                  router: RouterProtocol) {
        self.view = view
        self.networkService = networkService
        self.router = router
    }
    
    // MARK: - Methods DetailPresenterProtocol
    
    func getNews() {
        networkService.getNews(page: 1) { [weak self] result in
            guard let self = self else { return }
            self.isLoading = false
            DispatchQueue.main.async {
                switch result {
                case .success((let news, let currentPage)):
                    self.news = news
                    self.currentPage = currentPage ?? 0
                    self.view?.succes()
                case .failure(let error):
                    self.view?.failure(error: error)
                }
            }
        }
    }
    
    func getMoreNews() {
        guard !isLoading else { return }
        currentPage += 1
   
        networkService.getNews(page: currentPage) { [weak self] result in
            guard let self = self else { return }
            DispatchQueue.main.async {
                switch result {
                case .success((let news, _)):
                    self.news?.append(contentsOf: news ?? [])
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
                // проверяем, содержит ли webTitle в нижнем регистре текст, введенный в строку поиска
                return true
            }
            return false
        })
        news = searchedNews
        self.view?.succes()
    }
}
