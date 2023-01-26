//
//  WelcomeViewController.swift
//  RCProject1
//
//  Created by Steve on 2022/10/24.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    let underlineBtn: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: 15, weight: .semibold),
        .underlineStyle: NSUnderlineStyle.single.rawValue
      ]
    
    @IBOutlet weak var loginBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let attributeString = NSMutableAttributedString(
                string: "로그인하기",
                attributes: underlineBtn
             )
        loginBtn.setAttributedTitle(attributeString, for: .normal)
    }
    
    @IBAction func niceToMeetYouButton(_ sender: UIButton) {
        guard let stepOneViewController = self.storyboard?.instantiateViewController(identifier: "StepOneViewController") as? StepOneViewController else { return }
        stepOneViewController.modalTransitionStyle = .coverVertical
        stepOneViewController.modalPresentationStyle = .fullScreen
        self.present(stepOneViewController, animated: true)
    }
    
    @IBAction func loginButton(_ sender: UIButton) {
        if let controller = self.storyboard?.instantiateViewController(identifier: "LoginViewController") {
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}
