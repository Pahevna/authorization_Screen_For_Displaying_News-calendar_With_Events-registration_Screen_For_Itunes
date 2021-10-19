//
//  AlertOk.swift
//  auth_valid_itunes_task
//
//  Created by mac on 19.10.2021.
//

import UIKit

extension UIViewController {
    
    func showAlertOk(title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        let ok = UIAlertAction(title: "OK", style: .default)
        
        alert.addAction(ok)
        
        present(alert, animated: true, completion: nil)
    }
}
