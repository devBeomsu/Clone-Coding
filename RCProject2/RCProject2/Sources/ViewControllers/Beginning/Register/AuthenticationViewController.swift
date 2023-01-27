//
//  AuthenticationViewController.swift
//  RCProject2
//
//  Created by Steve on 2022/10/31.
//

import UIKit

class AuthenticationViewController: UIViewController, UITextFieldDelegate, UIGestureRecognizerDelegate {
    
    let underlineBtn: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: 15, weight: .regular),
        .underlineStyle: NSUnderlineStyle.single.rawValue
      ]

    @IBOutlet weak var phoneNumberTextField: UITextField!
    @IBOutlet weak var emailButton: UIButton!
    
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
