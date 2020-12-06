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
    var updateUserName: String?
    var updatePassword: String?
    var typeText: TypeText?
    var keychain: KeychainSwift?
 
    required init(view: AuthViewProtocol, user: User) {
        self.view = view
        self.user = user
    }
    
    func didUpdateFieldWith(type: TypeText, updateText: String) {
        switch typeText {
        case .userName:
            updateUserName = updateText
        case .password:
            updatePassword = updateText
        case .none:
            break
        }
    }
    
    func didTapLogIn(userName: AuthView, password: AuthView) {
        guard let updateUserName = updateUserName,
              let updatePassword = updatePassword else { return }
        
        keychain?.set(updateUserName, forKey: "myUserName")
        keychain?.set(updatePassword, forKey: "myPassword")
    }
}
