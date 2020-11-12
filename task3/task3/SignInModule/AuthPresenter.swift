//
//  AuthPresenter.swift
//  task3
//
//  Created by mac on 07.11.2020.
//

import Foundation

protocol AuthViewProtocol: class {
    
}

protocol AuthPresenterProtocol: class {
    init (view: AuthViewProtocol, user: User)
    func login(userName: String, password: String)
}

class AuthPresenter: AuthPresenterProtocol {
    weak var view: AuthViewProtocol?
    var user: User!
 
    required init(view: AuthViewProtocol, user: User) {
        self.view = view
        self.user = user
    }
    
    func login(userName: String, password: String) {
       
        
    }
}
