//
//  Auth.swift
//  task3
//
//  Created by mac on 09.11.2020.
//

import UIKit

@IBDesignable class AuthView: UIView {
    
    @IBOutlet weak var txtAuth: UITextField!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
        makeDesignTextField()
        txtAuth.setLeftPaddingPoints(amount: 47)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
        makeDesignTextField()
        txtAuth.setLeftPaddingPoints(amount: 47)
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
    
    private func makeDesignTextField() {
        txtAuth.layer.cornerRadius = txtAuth.frame.size.height/2
        txtAuth.layer.borderWidth = 0.1  //как сделать доступным Constants.borderWidth
        txtAuth.layer.masksToBounds = true
    }
}

private extension UITextField {
    func setLeftPaddingPoints (amount: CGFloat) {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: amount, height: frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
}
