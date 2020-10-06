//
//  ModuleBuilder .swift
//  MVP
//
//  Created by mac on 01.10.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

protocol Builder {
    static func createMainModule() -> UIViewController
    static func createDetailModule(comment:  Comment?) -> UIViewController
}

class ModelBuilder: Builder {
    
    static func createMainModule() -> UIViewController {
        let view = MainViewController()
        let networkService = NetworkService()
        let presenter = MainPresenter(view: view, networkService: networkService)               //инъекция снаружи
        view.presenter = presenter
        return view
    }
    static func createDetailModule(comment: Comment?) -> UIViewController {
        let view = DetailViewController()
        let networkService = NetworkService()
        let presenter = DetailPresenter(view: view, networkService: networkService, comment: comment)              //инъекция снаружи
        view.presenter = presenter
        return view
      }
}
