//
//  Router.swift
//  MVP
//
//  Created by mac on 08.10.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

protocol RouterMain {
    var navigationController: UINavigationController? { get set }
    var assemblyBuilder: AssemblyBuilderProtocol? { get set }
}

protocol RouterProtocol: RouterMain {
    func initialViewController()
    func showDetail(comment: Comment?)
    func popToRoot()
}

class Router: RouterProtocol {    
    var navigationController: UINavigationController?
    var assemblyBuilder: AssemblyBuilderProtocol?
       
    init(navigationController: UINavigationController, assemblyBuilder: AssemblyBuilderProtocol?) {
        self.navigationController = navigationController
        self.assemblyBuilder = assemblyBuilder                 //делаем DI инъекция зависимости?
    }
    
    func initialViewController() {
        if let navigationController = navigationController {
            guard let mainViewController = assemblyBuilder?.createMainModule(router: self) else { return }
            navigationController.viewControllers = [mainViewController]
        }
    }
    
    func showDetail(comment: Comment?) {
        if let navigationController = navigationController {
            guard let detailViewController = assemblyBuilder?.createDetailModule(comment: comment, router: self) else { return }
            navigationController.pushViewController(detailViewController, animated: true)
    }
}
    
    func popToRoot() {
        if let navigationController = navigationController {
           navigationController.popToRootViewController(animated: true) 
        }
    }
}
