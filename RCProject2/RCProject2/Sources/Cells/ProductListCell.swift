//
//  ProductListCell.swift
//  RCProject2
//
//  Created by Steve on 2022/10/31.
//

import UIKit

class ProductListCell: UITableViewCell {
    
    @IBOutlet weak var productImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    func configure(_ product: Product) {
        productImage.image = UIImage(named: product.imageName)
        titleLabel.text = product.title
        areaLabel.text = product.area
        timeLabel.text = "\(product.time)분전"
        priceLabel.text = "\(convertToCurrencyFormat(price: product.price))원"
    }
    
    func convertToCurrencyFormat(price: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.minimumIntegerDigits = 0
        
        let result = numberFormatter.string(from: NSNumber(value: price)) ?? ""
        
        return result
    }

}
