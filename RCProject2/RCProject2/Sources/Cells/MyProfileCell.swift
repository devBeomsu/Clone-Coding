//
//  MyProfileCell.swift
//  RCProject2
//
//  Created by Steve on 2022/11/04.
//

import UIKit

class MyProfileCell: UITableViewCell {
    
    @IBOutlet weak var dgView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var goProfileButton: UIButton!
    @IBOutlet weak var dgPayImage: UIImageView!
    @IBOutlet weak var dgPayLabelButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var sendButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        dgView.layer.borderWidth = 1
        dgView.layer.cornerRadius = 10
        dgView.layer.borderColor = UIColor(named: "divider")?.cgColor
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
