//
//  BeginningViewController.swift
//  RCProject2
//
//  Created by Steve on 2022/10/30.
//

import UIKit

class BeginningViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func homeButtonDidTap(_ sender: UIButton) {
        if let mainVC = self.storyboard?.instantiateViewController(identifier: "TabBarVC") {
            self.navigationController?.pushViewController(mainVC, animated: true)
        }
    }
    
    @IBAction func startButtonDidTap(_ sender: UIButton) {
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let beginningSearchVC = storyboard.instantiateViewController(withIdentifier: "BeginningSearchViewController") as! BeginningSearchViewController
        self.navigationController?.pushViewController(beginningSearchVC, animated: true)
        
    }
    
    @IBAction func loginButtonDidTap(_ sender: UIButton) {
        if let loginVC = self.storyboard?.instantiateViewController(identifier: "LoginViewController") {
            self.navigationController?.pushViewController(loginVC, animated: true)
        }
    }
    
}
