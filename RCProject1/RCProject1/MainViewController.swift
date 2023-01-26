//
//  MainViewController.swift
//  RCProject1
//
//  Created by Steve on 2022/10/25.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var todoView: UIView!
    
    @IBOutlet weak var addBtnView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        todoView.layer.cornerRadius = 20

        addBtnView.layer.cornerRadius = 0.5 * addBtnView.bounds.size.width
        addBtnView.layer.borderWidth = 1
        addBtnView.layer.borderColor = UIColor(red: 230/250, green: 230/250, blue: 230/250, alpha: 1).cgColor
    }
    
    @IBAction func activeButton(_ sender: UIButton) {
        // Half Modal Button
    }
    
    @IBAction func todoButton(_ sender: UIButton) {
        guard let todoVC = self.storyboard?.instantiateViewController(withIdentifier: "TodoViewController") as? TodoViewController else { return }
        todoVC.modalTransitionStyle = .coverVertical
        todoVC.modalPresentationStyle = .fullScreen
        
        self.present(todoVC, animated: true)
    }
    
    @IBAction func addButton(_ sender: UIButton) {
        
    }
    
}
