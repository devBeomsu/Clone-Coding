//
//  LoginViewController.swift
//  RCProject1
//
//  Created by Steve on 2022/10/24.
//

import UIKit
import Combine

class LoginViewController: UIViewController, UITextFieldDelegate {
    // 스크롤 시 상단 그림자 효과
    @IBOutlet weak var topCoverView: UIView!
    
    // 아이디 텍스트 필드
    @IBOutlet weak var idView: UIView!
    @IBOutlet weak var idTextField: UITextField!
    
    // 비밀번호 텍스트 필드
    @IBOutlet weak var pwView: UIView!
    @IBOutlet weak var pwTextField: UITextField!
    
    // 비밀번호 표시 아이콘
    @IBOutlet weak var invisibleButton: PasswordVisibleBtn!
    
    // 로그인 버튼
    @IBOutlet weak var loginButton: UIButton!
    
    // 아이디, 비밀번호 찾기 버튼
    @IBOutlet weak var forgotMyId: UIButton!
    @IBOutlet weak var forgotMyPw: UIButton!
    
    // 회원가입 버튼
    @IBOutlet weak var registerBtn: UIButton!
    
    var subscriptions = Set<AnyCancellable>()
    
    // 비밀번호 노출여부
    var isPasswordVisible = CurrentValueSubject<Bool, Never>(true)
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.tintColor = .systemYellow
        self.navigationController?.navigationBar.topItem?.title = ""
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.startPoint = CGPoint(x: 0, y: 1)
        gradientLayer.endPoint = CGPoint(x: 0, y: 0.0)
        gradientLayer.locations = [0, 1, 0, 1]
        gradientLayer.colors = [
            UIColor.clear.cgColor,
            UIColor.white.cgColor,
            UIColor.white.cgColor
        ]
        gradientLayer.frame = topCoverView.bounds
        topCoverView.layer.mask = gradientLayer
        
        idView.layer.borderWidth = 1
        idView.layer.borderColor = UIColor.systemYellow.cgColor
        idView.layer.cornerRadius = 5
        self.idTextField.addPadding()
        
        pwView.layer.borderWidth = 1
        pwView.layer.borderColor = UIColor.systemYellow.cgColor
        pwView.layer.cornerRadius = 5
        self.pwTextField.addPadding()
        
        loginButton.layer.cornerRadius = 5
        registerBtn.layer.cornerRadius = 5
        
        invisibleButton.addTarget(self, action: #selector(onSetPasswordVisibleBtnClicked(_:)), for: .touchUpInside)
        
        self.isPasswordVisible.assign(to: \.isPasswordVisible, on: self.invisibleButton)
            .store(in: &subscriptions)
        
        self.isPasswordVisible.assign(to: \.isSecureTextEntry, on: self.pwTextField)
            .store(in: &subscriptions)
        
        idTextField.delegate = self
        pwTextField.delegate = self
        self.hideKeyboardWhenTappedAround1()
    }
    
    @objc
    fileprivate func onSetPasswordVisibleBtnClicked(_ sender: UIButton) {
        self.isPasswordVisible.send(!self.isPasswordVisible.value)
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        let registerVC = storyboard.instantiateViewController(withIdentifier: "RegisterViewController") as! RegisterViewController
        
        self.navigationController?.pushViewController(registerVC, animated: true)
    }
}

extension UITextField {
    func addPadding() {
        let leftPadding = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: self.frame.height))
        self.leftView = leftPadding
        self.leftViewMode = ViewMode.always
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround1() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard1))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc
    func dismissKeyboard1() {
        view.endEditing(true)
    }
}
