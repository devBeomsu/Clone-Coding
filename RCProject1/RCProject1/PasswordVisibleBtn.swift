//
//  PasswordVisibleBtn.swift
//  RCProject1
//
//  Created by Steve on 2022/10/29.
//

import Foundation
import UIKit

class PasswordVisibleBtn: UIButton {
    
    let visibleImage = UIImage(systemName: "eye")
    let invisibleImage = UIImage(systemName: "eye.slash")
    
    var isPasswordVisible: Bool = false {
        didSet {
            self.setImage(isPasswordVisible ? invisibleImage : visibleImage, for: .normal)
        }
    }
}
