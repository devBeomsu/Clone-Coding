//
//  ChatListCell.swift
//  RCProject2
//
//  Created by Steve on 2022/11/03.
//

import UIKit

class ChatListCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var userInfo: UILabel!
    @IBOutlet weak var content: UILabel!
    @IBOutlet weak var thumbnail: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImage.layer.cornerRadius = profileImage.bounds.width / 2
        thumbnail.layer.cornerRadius = 5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(_ chat: Chat) {
        profileImage.image = UIImage(named: chat.profileImage)
        nickname.text = "\(chat.nickname)"
        userInfo.text = "\(chat.userInfo)"
        content.text = "\(chat.message)"
        thumbnail.image = UIImage(named: chat.productThumbnail)
    }

}
