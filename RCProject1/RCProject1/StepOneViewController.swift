//
//  StepOneViewController.swift
//  RCProject1
//
//  Created by Steve on 2022/10/24.
//

import UIKit

class StepOneViewController: UIViewController {

    @IBOutlet weak var progressView: UIProgressView!
    
    @IBOutlet weak var secondLabel: UILabel!
    @IBOutlet weak var lastLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        progressView.progress = 0.3
        
        let secondAttributedString = NSMutableAttributedString(string: secondLabel.text!, attributes: [
                  .font: UIFont.systemFont(ofSize: 17, weight: .medium),
            ])
        
        secondAttributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 19, weight: .bold), range: (secondLabel.text! as NSString).range(of: "환경"))
        secondAttributedString.addAttribute(.foregroundColor, value: #colorLiteral(red: 170/250, green: 170/250, blue: 170/250, alpha: 1), range: (secondLabel.text! as NSString).range(of: "환경"))
                
        self.secondLabel.attributedText = secondAttributedString
        
        let lastAttributedString = NSMutableAttributedString(string: lastLabel.text!, attributes: [
                  .font: UIFont.systemFont(ofSize: 17, weight: .medium),
            ])
        
        lastAttributedString.addAttribute(.font, value: UIFont.systemFont(ofSize: 19, weight: .bold), range: (lastLabel.text! as NSString).range(of: "카페"))
        lastAttributedString.addAttribute(.foregroundColor, value: #colorLiteral(red: 170/250, green: 170/250, blue: 170/250, alpha: 1), range: (lastLabel.text! as NSString).range(of: "카페"))
                
        self.lastLabel.attributedText = lastAttributedString
    }
    
    func setProgress(_ progress: Float, animated: Bool) {
        
    }
    
    var progressPercent: Float = 0.0
    @IBAction func nextStepButton(_ sender: UIButton) {
        progressPercent += 0.1
        progressView.setProgress(progressPercent, animated: true)
        
        guard let stepTwoVC = self.storyboard?.instantiateViewController(withIdentifier: "StepTwoViewController") as? StepTwoViewController else { return }
        stepTwoVC.modalTransitionStyle = .coverVertical
        stepTwoVC.modalPresentationStyle = .fullScreen
        self.present(stepTwoVC, animated: false)
    }
    
}
