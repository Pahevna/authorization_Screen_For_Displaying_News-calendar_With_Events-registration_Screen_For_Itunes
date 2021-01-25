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
    func segueToDetailModule() 
}

protocol AuthPresenterProtocol: class {
    init (view: AuthViewProtocol)
    func didUpdateFieldWith(type: TypeText, updateText: String)
    func didTapLogIn(userName: AuthView, password: AuthView)
}

private struct Keys {
    static let password = "myPassword"
    static let userName = "myUserName"
    static let launchedBefore = "launchedBefore"
}

class AuthPresenter: AuthPresenterProtocol {
  
    weak var view: AuthViewProtocol?
    var updatedUserName: String?
    var updatedPassword: String?
    var keychain = KeychainSwift()
    let launchedBefore = UserDefaults.standard.bool(forKey: Keys.launchedBefore)
  
    required init(view: AuthViewProtocol) {
        self.view = view
        
    }
    
    func didUpdateFieldWith(type: TypeText, updateText: String) {
        
        switch type {
        case .userName:
            updatedUserName = updateText
        case .password:
            updatedPassword = updateText
        }
    }
    
    func didTapLogIn(userName: AuthView, password: AuthView) {
        guard let updatedUserName = updatedUserName,
              let updatedPassword = updatedPassword else { return }
        
        if launchedBefore {
            validate()
            
        } else {

            keychain.set(updatedUserName, forKey: Keys.userName)
            keychain.set(updatedPassword, forKey: Keys.password)
            UserDefaults.standard.set(true, forKey: Keys.launchedBefore)
        }
    }
    
    private func validate() {

        let valueUserName = keychain.get(Keys.userName)
        let valuePassword = keychain.get(Keys.password)
        
        if updatedUserName?.count != 0, updatedPassword?.count != 0 {
            
            if valueUserName == updatedUserName, valuePassword == updatedPassword
            {
                view?.segueToDetailModule() 
            } else {
                view?.showError(text: "Wrong password")
            }
            
        } else {
            view?.showError(text: "Please, enter your password ")
        }
    }
}
