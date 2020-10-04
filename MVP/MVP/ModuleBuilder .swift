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
}

class ModuleBuilder: Builder {
    static func createMainModule() -> UIViewController {
        let view = MainViewController()
        let networkService = NetworkService()
        let presenter = MainPresenter(view: view, networkService: networkService)               //инъекция снаружи
        view.presenter = presenter
        return view
    }
}
