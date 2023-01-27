//
//  MyListCell.swift
//  RCProject2
//
//  Created by Steve on 2022/11/04.
//

import UIKit

class MyListCell: UITableViewCell {
    
    @IBOutlet weak var myListImage: UIImageView!
    @IBOutlet weak var myListLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ list: My) {
        myListImage.image = UIImage(named: "\(String(describing: list.iconName))")
        myListLabel.text = "\(list.myList)"
    }

}
