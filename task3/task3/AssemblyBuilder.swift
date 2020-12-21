//
//  AssemblyBuilder.swift
//  task3
//
//  Created by mac on 08.12.2020.
//

import UIKit

protocol AssemblyBuilderProtocol {
    static func createSignInModule() -> UIViewController
}

class ModelBuilder: AssemblyBuilderProtocol {
    static func createSignInModule() -> UIViewController {
        let view = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AuthViewController") as! AuthViewController
        let presenter = AuthPresenter(view: view)
        view.presenter = presenter
        return view
    }
}
