//
//  ViewController.swift
//  task3
//
//  Created by mac on 22.10.2020.
//

import UIKit

class AuthViewController: UIViewController {

    @IBOutlet weak var logInView: UIView!
    @IBOutlet weak var logInButton: UIButton!
    @IBOutlet weak var contentView: UIView!
    
    var presenter: AuthPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.setGradientBackround(colorOne: Constants.colorOneForView, colorTwo: Constants.colorTwoForView)
        contentView.setGradientBackround(colorOne: Constants.colorOneForContentView,
                                         colorTwo: Constants.colorTwoForContentView)
        logInButton.setGradientBackround(colorOne: Constants.colorOneForButton,
                                         colorTwo: Constants.colorTwoForButton)
        
        makeDesign()
    }
    
    @IBAction func didTapButton (_ sender: Any) {
        //presenter.login(userName: txtUserName, password: txtUserName)
    }
    
    private func makeDesign() {
        logInButton.layer.cornerRadius = logInButton.frame.size.height/2
        logInButton.layer.masksToBounds = true
        
        logInView.layer.cornerRadius = Constants.cornerRadius
        logInView.clipsToBounds = true
    }
}

private extension UIView {
    func setGradientBackround(colorOne: UIColor, colorTwo: UIColor) {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = bounds
        gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.0)
        gradientLayer.endPoint = CGPoint(x: 0.0, y: 1.0)
        layer.insertSublayer(gradientLayer, at: 0)
    }
}

private extension AuthViewController {
    struct Constants {
        static let cornerRadius: CGFloat = 10
        static let borderWidth: CGFloat = 0.1
        static let colorOneForView = UIColor(red: 77.0/255.0, green: 90.0/255.0, blue: 200.0/255.0, alpha: 1.0)
        static let colorTwoForView = UIColor(red: 0.0/255.0, green: 162.0/255.0, blue: 212.0/255.0, alpha: 1.0)
        static let colorOneForContentView = UIColor(red: 75.0/255.0, green: 92.0/255.0,blue: 202.0/255.0,
                                                    alpha: 1.0)
        static let colorTwoForContentView = UIColor(red: 0.0/255.0, green: 152.0/255.0,blue: 209.0/255.0,
                                                    alpha: 1.0)
        static let colorOneForButton = UIColor(red: 64.0/255.0, green: 224.0/255.0,blue: 246.0/255.0,
                                               alpha: 1.0)
        static let colorTwoForButton = UIColor(red: 64.0/255.0, green: 190.0/255.0,blue: 234.0/255.0,
                                               alpha: 1.0)
    }
}
