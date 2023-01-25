//
//  HomeViewController.swift
//  RCProject0
//
//  Created by 심범수 on 2022/10/16.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var adView: UIView!
    
    @IBOutlet weak var washingView: UIView!
    @IBOutlet weak var dryerView: UIView!
    
    @IBOutlet weak var airconView: UIView!
    @IBOutlet weak var onOffButton: UIButton!
    @IBOutlet weak var minusButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var topScrollButton: UIButton!
    
    @IBOutlet weak var firstReportView: UIView!
    @IBOutlet weak var secondReportView: UIView!
    @IBOutlet weak var lastReportView: UIView!
    
    @IBOutlet weak var firstIconButton: UIButton!
    @IBOutlet weak var secondIconButton: UIButton!
    @IBOutlet weak var thirdIconButton: UIButton!
    @IBOutlet weak var fourthIconButton: UIButton!
    @IBOutlet weak var fifthIconButton: UIButton!
    @IBOutlet weak var lastIconButton: UIButton!
    
    @IBOutlet weak var firstLifeView: UIView!
    @IBOutlet weak var secondLifeView: UIView!
    @IBOutlet weak var lastLifeView: UIView!
    
    @IBOutlet weak var firstSmartButton: UIButton!
    @IBOutlet weak var secondSmartButton: UIButton!
    @IBOutlet weak var thirdSmartButton: UIButton!
    @IBOutlet weak var fourthSmartButton: UIButton!
    @IBOutlet weak var lastSmartButton: UIButton!
    
    @IBOutlet weak var firstEventView: UIView!
    @IBOutlet weak var secondEventView: UIView!
    @IBOutlet weak var lastEventView: UIView!
    
    @IBOutlet weak var editButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        adView.layer.cornerRadius = 10
        adView.layer.shadowColor = UIColor.lightGray.cgColor
        adView.layer.masksToBounds = false
        adView.layer.shadowOffset = CGSize(width: 0, height: 4)
        adView.layer.shadowRadius = 4
        adView.layer.shadowOpacity = 0.5
        
        washingView.layer.cornerRadius = 10
        washingView.layer.shadowColor = UIColor.lightGray.cgColor
        washingView.layer.masksToBounds = false
        washingView.layer.shadowOffset = CGSize(width: 0, height: 4)
        washingView.layer.shadowRadius = 4
        washingView.layer.shadowOpacity = 0.5
        
        dryerView.layer.cornerRadius = 10
        dryerView.layer.shadowColor = UIColor.lightGray.cgColor
        dryerView.layer.masksToBounds = false
        dryerView.layer.shadowOffset = CGSize(width: 0, height: 4)
        dryerView.layer.shadowRadius = 4
        dryerView.layer.shadowOpacity = 0.5
        
        airconView.layer.cornerRadius = 10
        airconView.layer.shadowColor = UIColor.lightGray.cgColor
        airconView.layer.masksToBounds = false
        airconView.layer.shadowOffset = CGSize(width: 0, height: 4)
        airconView.layer.shadowRadius = 4
        airconView.layer.shadowOpacity = 0.5
        
        onOffButton.layer.cornerRadius = onOffButton.frame.size.height / 2
        onOffButton.layer.shadowColor = UIColor.lightGray.cgColor
        onOffButton.layer.masksToBounds = false
        onOffButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        onOffButton.layer.shadowRadius = 4
        onOffButton.layer.shadowOpacity = 0.5
        
        minusButton.layer.cornerRadius = minusButton.frame.size.height / 2
        minusButton.layer.shadowColor = UIColor.lightGray.cgColor
        minusButton.layer.masksToBounds = false
        minusButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        minusButton.layer.shadowRadius = 4
        minusButton.layer.shadowOpacity = 0.5
        
        plusButton.layer.cornerRadius = plusButton.frame.size.height / 2
        plusButton.layer.shadowColor = UIColor.lightGray.cgColor
        plusButton.layer.masksToBounds = false
        plusButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        plusButton.layer.shadowRadius = 4
        plusButton.layer.shadowOpacity = 0.5
        
        addButton.layer.cornerRadius = 20
        addButton.layer.shadowColor = UIColor.lightGray.cgColor
        addButton.layer.masksToBounds = false
        addButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        addButton.layer.shadowRadius = 4
        addButton.layer.shadowOpacity = 0.5
        
        topScrollButton.layer.cornerRadius = topScrollButton.frame.size.height / 2
        topScrollButton.layer.shadowColor = UIColor.lightGray.cgColor
        topScrollButton.layer.masksToBounds = false
        topScrollButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        topScrollButton.layer.shadowRadius = 4
        topScrollButton.layer.shadowOpacity = 0.5
        
        firstReportView.layer.cornerRadius = 10
        firstReportView.layer.shadowColor = UIColor.lightGray.cgColor
        firstReportView.layer.masksToBounds = false
        firstReportView.layer.shadowOffset = CGSize(width: 0, height: 4)
        firstReportView.layer.shadowRadius = 4
        firstReportView.layer.shadowOpacity = 0.5
        
        secondReportView.layer.cornerRadius = 10
        secondReportView.layer.shadowColor = UIColor.lightGray.cgColor
        secondReportView.layer.masksToBounds = false
        secondReportView.layer.shadowOffset = CGSize(width: 0, height: 4)
        secondReportView.layer.shadowRadius = 4
        secondReportView.layer.shadowOpacity = 0.5
        
        lastReportView.layer.cornerRadius = 10
        lastReportView.layer.shadowColor = UIColor.lightGray.cgColor
        lastReportView.layer.masksToBounds = false
        lastReportView.layer.shadowOffset = CGSize(width: 0, height: 4)
        lastReportView.layer.shadowRadius = 4
        lastReportView.layer.shadowOpacity = 0.5
        
        firstIconButton.layer.cornerRadius = firstIconButton.frame.size.height / 2
        secondIconButton.layer.cornerRadius = secondIconButton.frame.size.height / 2
        thirdIconButton.layer.cornerRadius = thirdIconButton.frame.size.height / 2
        fourthIconButton.layer.cornerRadius = fourthIconButton.frame.size.height / 2
        fifthIconButton.layer.cornerRadius = fifthIconButton.frame.size.height / 2
        lastIconButton.layer.cornerRadius = lastIconButton.frame.size.height / 2
        
        firstLifeView.layer.cornerRadius = 10
        firstLifeView.layer.shadowColor = UIColor.lightGray.cgColor
        firstLifeView.layer.masksToBounds = false
        firstLifeView.layer.shadowOffset = CGSize(width: 0, height: 4)
        firstLifeView.layer.shadowRadius = 4
        firstLifeView.layer.shadowOpacity = 0.5
        
        secondLifeView.layer.cornerRadius = 10
        secondLifeView.layer.shadowColor = UIColor.lightGray.cgColor
        secondLifeView.layer.masksToBounds = false
        secondLifeView.layer.shadowOffset = CGSize(width: 0, height: 4)
        secondLifeView.layer.shadowRadius = 4
        secondLifeView.layer.shadowOpacity = 0.5
        
        lastLifeView.layer.cornerRadius = 10
        lastLifeView.layer.shadowColor = UIColor.lightGray.cgColor
        lastLifeView.layer.masksToBounds = false
        lastLifeView.layer.shadowOffset = CGSize(width: 0, height: 4)
        lastLifeView.layer.shadowRadius = 4
        lastLifeView.layer.shadowOpacity = 0.5
        
        firstSmartButton.layer.cornerRadius = 10
        firstSmartButton.layer.masksToBounds = true
        
        secondSmartButton.layer.cornerRadius = 10
        secondSmartButton.layer.masksToBounds = true
        
        thirdSmartButton.layer.cornerRadius = 10
        thirdSmartButton.layer.masksToBounds = true
        
        fourthSmartButton.layer.cornerRadius = 10
        fourthSmartButton.layer.masksToBounds = true
        
        lastSmartButton.layer.cornerRadius = 10
        lastSmartButton.layer.masksToBounds = true
        
        firstEventView.layer.cornerRadius = 10
        firstEventView.layer.shadowColor = UIColor.lightGray.cgColor
        firstEventView.layer.masksToBounds = false
        firstEventView.layer.shadowOffset = CGSize(width: 0, height: 4)
        firstEventView.layer.shadowRadius = 4
        firstEventView.layer.shadowOpacity = 0.5
        
        secondEventView.layer.cornerRadius = 10
        secondEventView.layer.shadowColor = UIColor.lightGray.cgColor
        secondEventView.layer.masksToBounds = false
        secondEventView.layer.shadowOffset = CGSize(width: 0, height: 4)
        secondEventView.layer.shadowRadius = 4
        secondEventView.layer.shadowOpacity = 0.5
        
        lastEventView.layer.cornerRadius = 10
        lastEventView.layer.shadowColor = UIColor.lightGray.cgColor
        lastEventView.layer.masksToBounds = false
        lastEventView.layer.shadowOffset = CGSize(width: 0, height: 4)
        lastEventView.layer.shadowRadius = 4
        lastEventView.layer.shadowOpacity = 0.5
        
        editButton.layer.cornerRadius = 20
        editButton.layer.shadowColor = UIColor.lightGray.cgColor
        editButton.layer.masksToBounds = false
        editButton.layer.shadowOffset = CGSize(width: 0, height: 4)
        editButton.layer.shadowRadius = 4
        editButton.layer.shadowOpacity = 0.5
    }

}
