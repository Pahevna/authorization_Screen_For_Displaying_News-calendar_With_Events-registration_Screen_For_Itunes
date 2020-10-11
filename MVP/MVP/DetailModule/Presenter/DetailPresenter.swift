//
//  DetailPresenter.swift
//  MVP
//
//  Created by mac on 06.10.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import Foundation

protocol DetailViewProtocol: class {
    func setComment(comment: Comment?)
}

protocol DetailViewPresenterProtocol {
    init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol, comment: Comment?)
    func setComment()
    func tap()
}

class DetailPresenter: DetailViewPresenterProtocol {
    
    weak var view: DetailViewProtocol?
    var router: RouterProtocol?
    let networkService: NetworkServiceProtocol!    //почему не ослабляем также как свойство выше
    var comment: Comment?
    
    required init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, router: RouterProtocol, comment: Comment?) {
        self.view = view
        self.networkService = networkService
        self.router = router        //инжэктим ? внедряем то есть?
        self.comment = comment
    }
    
    func tap() {
        router?.popToRoot() 
    }
    
    public func setComment() {
        self.view?.setComment(comment: comment)
    }
}
