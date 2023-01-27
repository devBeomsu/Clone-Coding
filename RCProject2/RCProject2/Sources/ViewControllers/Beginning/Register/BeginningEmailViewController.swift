//
//  BeginningEmailViewController.swift
//  RCProject2
//
//  Created by Steve on 2022/10/31.
//

import UIKit

class BeginningEmailViewController: UIViewController, UITextFieldDelegate, UIGestureRecognizerDelegate {
    
    let underlineBtn: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: 15, weight: .regular),
        .underlineStyle: NSUnderlineStyle.single.rawValue
      ]

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var askLabel: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self

        let attributeString = NSMutableAttributedString(
                string: "문의하기",
                attributes: underlineBtn
             )
        askLabel.setAttributedTitle(attributeString, for: .normal)
        
        emailTextField.delegate = self
        self.hideKeyboardWhenTappedAround()
    }

    @IBAction func backButtonDidTap(_ sender: UIBarButtonItem) {
        self.navigationController?.popViewController(animated: true)
    }
    
}
