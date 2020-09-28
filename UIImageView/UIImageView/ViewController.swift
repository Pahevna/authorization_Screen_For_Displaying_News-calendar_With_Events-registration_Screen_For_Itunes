//
//  ViewController.swift
//  UIImageView
//
//  Created by mac on 06.09.2020.
//  Copyright © 2020 mac. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private let myButton: UIButton = {
        let myButton = UIButton()
        myButton.frame = CGRect(x: UIScreen.main.bounds.width/4, y: 450, width: 200, height: 31)
        myButton.setTitle("Random image", for: .normal)
        myButton.setTitleColor(.black, for: .highlighted)
        myButton.backgroundColor = .systemBlue
        myButton.addTarget(self, action: #selector(pressedButton), for: .touchUpInside)
        return myButton
    }()
    
    private let myLabel: UILabel = {
        let myLabel = UILabel()
        myLabel.backgroundColor = .green
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: UIScreen.main.bounds.width/9, y: 550, width: 300, height: 71)
        return myLabel
    }()
    
    private var myImageView: UIImageView = {
        var myImageView = UIImageView()
        myImageView = UIImageView(frame: CGRect(x: 37, y: 70, width: 300, height: 300))
        myImageView.contentMode = .scaleAspectFill
        myImageView.layer.cornerRadius = myImageView.frame.size.width / 2
        myImageView.clipsToBounds = true
        return myImageView
    }()
    
    let imageArray = ["1", "2"]
    var countOfImageOne = 0
    var countOfImageTwo = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(myButton)
        view.addSubview(myLabel)
        view.addSubview(myImageView)
    }
    
    @objc func pressedButton(_ sender: UIButton) {
        
        DispatchQueue.global(qos: .background).async { [weak self] in
            guard let self = self else {
                return
            }
            let random = arc4random_uniform(2)
            
            switch random {
            case 0:
                self.countOfImageOne += 1
                
                DispatchQueue.main.async {
                    self.myImageView.image = UIImage(named: self.imageArray[0])
                    self.myLabel.text = "Image 1 selected \(self.countOfImageOne) times"
                }
            case 1:
                self.countOfImageTwo += 1
             
                DispatchQueue.main.async {
                    self.myImageView.image = UIImage(named: self.imageArray[1])
                    self.myLabel.text = "Image 2 selected \(self.countOfImageTwo) times"
                }
            
            default:
                break
            }
        }
    }
}
