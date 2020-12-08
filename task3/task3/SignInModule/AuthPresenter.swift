//
//  AuthPresenter.swift
//  task3
//
//  Created by mac on 07.11.2020.
//

import Foundation
import KeychainSwift

protocol AuthViewProtocol: class {
    func showError(text: String)
}

protocol AuthPresenterProtocol: class {
    init (view: AuthViewProtocol)
    func didUpdateFieldWith(type: TypeText, updateText: String)
    func didTapLogIn(userName: AuthView, password: AuthView)
}

class AuthPresenter: AuthPresenterProtocol {
  
    weak var view: AuthViewProtocol?
    var updatedUserName: String?
    var updatedPassword: String?
    var typeText: TypeText?
    var keychain: KeychainSwift?
 
    required init(view: AuthViewProtocol) {
        self.view = view
    }
    
    func didUpdateFieldWith(type: TypeText, updateText: String) {
        switch typeText {
        case .userName:
            updatedUserName = updateText
        case .password:
            updatedPassword = updateText
        case .none:
            break
        }
    }
    
    func didTapLogIn(userName: AuthView, password: AuthView) {
        guard let updatedUserName = updatedUserName,
              let updatedPassword = updatedPassword else { return }
        
        keychain?.set(updatedUserName, forKey: "myUserName")
        keychain?.set(updatedPassword, forKey: "myPassword")
    }
}
