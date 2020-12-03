//
//  AuthPresenter.swift
//  task3
//
//  Created by mac on 07.11.2020.
//

import Foundation
import KeychainSwift

protocol AuthViewProtocol: class {
    
}

protocol AuthPresenterProtocol: class {
    init (view: AuthViewProtocol, user: User)
    func didUpdateFieldWith(type: TypeText, updateText: String)
    func didTapLogIn(userName: AuthView, password: AuthView)
}

class AuthPresenter: AuthPresenterProtocol {
  
    weak var view: AuthViewProtocol?
    var user: User?
    var userName: String?
    var password: String?
    var typeText: TypeText?
 
    required init(view: AuthViewProtocol, user: User) {
        self.view = view
        self.user = user
    }
    
    func didUpdateFieldWith(type: TypeText, updateText: String) {
        switch typeText {
        case .userName:
            userName = updateText
        case .password:
            password = updateText
        case .none:
            <#code#>
        }
    }
    
    func didTapLogIn(userName: AuthView, password: AuthView) {
        let keychain = KeychainSwift()
        
        
    }
}
