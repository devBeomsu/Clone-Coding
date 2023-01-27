//
//  LocationListCell.swift
//  RCProject2
//
//  Created by Steve on 2022/10/30.
//

import UIKit

class LocationListCell: UITableViewCell {
    
    @IBOutlet weak var areaLabel: UILabel!

    func configure(_ location: Location) {
        areaLabel.text = "\(location.area)"
    }

}
