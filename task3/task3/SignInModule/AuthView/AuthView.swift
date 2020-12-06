//
//  Auth.swift
//  task3
//
//  Created by mac on 09.11.2020.
//

import UIKit

protocol AuthViewDelegate: class {
    func didUpdateText(typeText: TypeText, text: String)
}

enum TypeText {
    case userName
    case password
}

@IBDesignable class AuthView: UIView, UITextFieldDelegate {
    
    var typeText = TypeText.userName
    weak var delegate: AuthViewDelegate?
    
    @IBOutlet private weak var imgView: UIImageView!
    @IBOutlet private weak var txtAuth: UITextField!
        
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
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn: NSRange, replacementString: String) -> Bool {
        if let text = textField.text,
            let textRange = Range(shouldChangeCharactersIn, in: text) {
            let updatedText = text.replacingCharacters(in: textRange,
                                                       with: replacementString)
            delegate?.didUpdateText(typeText: typeText, text: updatedText)
        }
         return true
    }
}
