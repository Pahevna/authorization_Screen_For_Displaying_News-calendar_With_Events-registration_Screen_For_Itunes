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
    init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, comment: Comment?)
    func setComment()
}

class DetailPresenter: DetailViewPresenterProtocol {
    weak var view: DetailViewProtocol?
    let networkService: NetworkServiceProtocol!    //почему не ослабляем также как свойство выше
    var comment: Comment?
    
    required init(view: DetailViewProtocol, networkService: NetworkServiceProtocol, comment: Comment?) {
        self.view = view
        self.networkService = networkService        //инжектим ? внедряем то есть?
        self.comment = comment
    }
    
    public func setComment() {
        self.view?.setComment(comment: comment)
    }
}
