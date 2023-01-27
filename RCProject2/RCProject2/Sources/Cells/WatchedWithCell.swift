//
//  WatchedWithCell.swift
//  RCProject2
//
//  Created by Steve on 2022/10/31.
//

import UIKit

class WatchedWithCell: UICollectionViewCell {
    
    @IBOutlet weak var watchedImage: UIImageView!
    @IBOutlet weak var watchedTitle: UILabel!
    @IBOutlet weak var watchedPrice: UILabel!
    
    func configure(_ watchedList: WatchedWith) {
        watchedImage.image = UIImage(named: watchedList.productImage)
        watchedTitle.text = "\(watchedList.productTitle)"
        watchedPrice.text = "\(convertToCurrencyFormat(price: watchedList.productPrice))원"
        
        watchedImage.layer.cornerRadius = 5
    }
    
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumIntegerDigits = 0
        
        let result = numberFormatter.string(from: NSNumber(value: price)) ?? ""
        
        return result
    }
}
