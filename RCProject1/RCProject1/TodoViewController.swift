//
//  TodoViewController.swift
//  RCProject1
//
//  Created by Steve on 2022/10/26.
//

import UIKit

class TodoViewController: UIViewController {
    
    @IBOutlet weak var backBtnView: UIView!
    
    @IBOutlet weak var editBtnView: UIView!
    
    @IBOutlet weak var todoBtnView: UIView!
    
    @IBOutlet weak var playBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backBtnView.layer.cornerRadius = 0.5 * backBtnView.bounds.size.width
        
        editBtnView.layer.cornerRadius = 0.5 * editBtnView.bounds.size.width
        
        todoBtnView.layer.cornerRadius = 20
        
        playBtn.layer.masksToBounds = false
        playBtn.layer.shadowOffset = CGSize(width: 0, height: 1)
        playBtn.layer.shadowRadius = 2
        playBtn.layer.shadowOpacity = 0.5
    }

    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func todoButton(_ sender: UIButton) {
        
    }
    
    @IBAction func playButton(_ sender: UIButton) {
        guard let timerVC = self.storyboard?.instantiateViewController(withIdentifier: "TimerViewController") as? TimerViewController else { return }
        timerVC.modalTransitionStyle = .coverVertical
        timerVC.modalPresentationStyle = .fullScreen
        
        self.present(timerVC, animated: true)
    }
    
}
