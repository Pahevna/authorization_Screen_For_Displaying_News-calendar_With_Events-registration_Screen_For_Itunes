//
//  MainPresenter.swift
//  MVP
//
//  Created by mac on 30.09.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

protocol MainViewProtocol: class {
    func succes()
    func failure(error: Error)
}

protocol MainViewPresenterProtocol: class {
    init(view: MainViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol)
    func getComments()
    var comments: [Comment]? { get set }
    func tapOnTheComment(comment: Comment?)
}

class MainPresenter: MainViewPresenterProtocol {
    
    weak var view: MainViewProtocol?
    var router: RouterProtocol?
    let networkService: NetworkServiceProtocol!    //почему не ослабляем также как свойство выше
    var comments: [Comment]?
    
    required init(view: MainViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol) {
        self.view = view
        self.networkService = networkService
        self.router = router 
        getComments()
    }

    func tapOnTheComment(comment: Comment?) {
        router?.showDetail(comment: comment) 
            
    }
    
    func getComments() {
        networkService.getComments { [weak self] result in
            guard let self = self else { return }
        
            DispatchQueue.main.async {               //????? почему возвращается через urlSession async?
                switch result {
                case .success(let comments):
                    self.comments = comments
                    self.view?.succes()               //??????
                case .failure(let error):
                    self.view?.failure(error: error)
                }
            }
        }
    }
}
