//
//  Auth.swift
//  task3
//
//  Created by mac on 09.11.2020.
//

import UIKit

@IBDesignable class AuthView: UIView {
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var txtAuth: UITextField!
    
    @IBInspectable var borderWidth: CGFloat = 0.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }

    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.cgColor
        }
    }
    
    @IBInspectable var image: UIImage? {
        didSet {
            imgView.image = image
        }
    }
   
    @IBInspectable var placeholder: String? {
        didSet {
            txtAuth.placeholder = placeholder
        }
    }
    
    @IBInspectable var isSecurityTextEntry = false {
        didSet {
            txtAuth.isSecureTextEntry = isSecurityTextEntry
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    private func setupViews() {
        guard let xibViews = loadViewFromXib() else { return }
        xibViews.frame = self.bounds
        xibViews.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        self.addSubview(xibViews)
    }
    
    private func loadViewFromXib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "AuthView", bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}
