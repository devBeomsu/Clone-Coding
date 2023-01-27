//
//  NeighborFeedCell.swift
//  RCProject2
//
//  Created by Steve on 2022/11/02.
//

import UIKit

class NeighborFeedCell: UITableViewCell {
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var cateView: UIView!
    @IBOutlet weak var cateLabel: UILabel!
    @IBOutlet weak var feedContent: UILabel!
    @IBOutlet weak var userInfoLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    func configure(_ feed: Feed) {
        cateLabel.text = "\(feed.category)"
        feedContent.text = "\(feed.feedContent)"
        userInfoLabel.text = "\(feed.userInfo)"
        timeLabel.text = "\(feed.time)분전"
    }
    
    override class func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
