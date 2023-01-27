//
//  LoginViewController.swift
//  RCProject2
//
//  Created by Steve on 2022/11/01.
//

import UIKit

class LoginViewController: UIViewController, UIGestureRecognizerDelegate, UITextFieldDelegate {
    
    let underlineBtn: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: 15, weight: .regular),
        .underlineStyle: NSUnderlineStyle.single.rawValue
      ]

    @IBOutlet weak var emailButton: UIButton!
    @IBOutlet weak var phoneNumberTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self

        let attributeString = NSMutableAttributedString(
                string: "이메일로 계정 찾기",
                attributes: underlineBtn
             )
        emailButton.setAttributedTitle(attributeString, for: .normal)
        
        phoneNumberTextField.delegate = self
        self.hideKeyboardWhenTappedAround()
    }

    @IBAction func backButtonDidTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func emailButtonDidTap(_ sender: UIButton) {
        if let emailVC = self.storyboard?.instantiateViewController(identifier: "BeginningEmailViewController") {
            self.navigationController?.pushViewController(emailVC, animated: true)
        }
    }
    
}
