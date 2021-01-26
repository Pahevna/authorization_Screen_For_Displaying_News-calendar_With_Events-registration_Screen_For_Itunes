//
//  AssemblyBuilder.swift
//  task3
//
//  Created by mac on 08.12.2020.
//

import UIKit

protocol AssemblyBuilderProtocol {
    func createSignInModule(router: RouterProtocol) -> UIViewController
    func createDetailModule(router: RouterProtocol) -> UIViewController
}

class AssemblyBuilder: AssemblyBuilderProtocol {
    func createSignInModule(router: RouterProtocol) -> UIViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AuthViewController") as! AuthViewController
        let presenter = AuthPresenter(view: view, router: router)
        view.presenter = presenter
        return view
    }
    
    func createDetailModule(router: RouterProtocol) -> UIViewController {
        let view = DetailViewController()
        let networkService = NetworkService()
        let presenter = DetailPresenter(view: view, networkService: networkService, router: router)
        view.detailPresenter = presenter
        return view
    }
}
