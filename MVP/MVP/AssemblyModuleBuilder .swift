//
//  ModuleBuilder .swift
//  MVP
//
//  Created by mac on 01.10.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

protocol AssemblyBuilderProtocol {
    func createMainModule(router: RouterProtocol) -> UIViewController
    func createDetailModule(comment:  Comment?, router: RouterProtocol) -> UIViewController
}

class AssemblyModuleBuilder: AssemblyBuilderProtocol {
    
    func createMainModule(router: RouterProtocol) -> UIViewController {
        let view = MainViewController()
        let networkService = NetworkService()
        let presenter = MainPresenter(view: view, networkService: networkService, router: router)               //инъекция снаружи
        view.presenter = presenter
        return view
    }
    
    func createDetailModule(comment: Comment?, router: RouterProtocol) -> UIViewController {
        let view = DetailViewController() 
        let networkService = NetworkService()
        let presenter = DetailPresenter(view: view, networkService: networkService,
                                        router: router, comment: comment)              //инъекция снаружи
        view.presenter = presenter
        return view
    }
}
