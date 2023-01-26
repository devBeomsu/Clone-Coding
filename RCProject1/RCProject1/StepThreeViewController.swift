//
//  StepThreeViewController.swift
//  RCProject1
//
//  Created by Steve on 2022/10/24.
//

import UIKit

class StepThreeViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var sexTextField: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressView.progress = 0.8
        
        nameTextField.layer.cornerRadius = 30
        nameTextField.addLeftPadding()
        nameTextField.delegate = self
        
        ageTextField.layer.cornerRadius = 30
        ageTextField.addLeftPadding()
        ageTextField.delegate = self
        
        sexTextField.layer.cornerRadius = 30
        sexTextField.addLeftPadding()
        sexTextField.delegate = self
        
        self.hideKeyboardWhenTappedAround0()
    }
    
    func setProgress(_ progress: Float, animated: Bool) {
        
    }
    
    var progressPercent: Float = 0.0
    @IBAction func readyButton(_ sender: UIButton) {
        progressPercent += 1
        progressView.setProgress(progressPercent, animated: true)
        
        guard let mainTabVC = self.storyboard?.instantiateViewController(withIdentifier: "MainTabBarViewController") as? MainTabBarViewController else { return }
        mainTabVC.modalTransitionStyle = .coverVertical
        mainTabVC.modalPresentationStyle = .fullScreen
        self.present(mainTabVC, animated: true)
    }
}

extension UITextField {
    func addLeftPadding() {
        let leftPadding = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: self.frame.height))
        self.leftView = leftPadding
        self.leftViewMode = ViewMode.always
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround0() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard0))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    @objc
    func dismissKeyboard0() {
        view.endEditing(true)
    }
}
