//
//  NeighborViewController.swift
//  RCProject2
//
//  Created by Steve on 2022/11/02.
//

import UIKit

class NeighborViewController: UIViewController {
    
    let contentsList: [Feed] = Feed.contents

    @IBOutlet weak var thinDivider: UIView!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var plusButtonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        let feedNib = UINib(nibName: "NeighborFeedCell", bundle: nil)
        tableView.register(feedNib, forCellReuseIdentifier: "NeighborFeedCell")
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = UITableView.automaticDimension
        tableView.separatorStyle = .none
        
        plusButtonView.layer.cornerRadius = plusButtonView.bounds.size.width / 2
        plusButtonView.layer.shadowColor = UIColor.lightGray.cgColor
        plusButtonView.layer.shadowOffset = CGSize(width: 0, height: 2)
        plusButtonView.layer.shadowRadius = 4
        plusButtonView.layer.shadowOpacity = 1
        plusButtonView.layer.masksToBounds = false
    }
}

extension NeighborViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contentsList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "NeighborFeedCell", for: indexPath) as? NeighborFeedCell else {
            return UITableViewCell()
        }
        let cellData = contentsList[indexPath.row]
        cell.configure(cellData)
        
        let attributedString = NSMutableAttributedString(string: cell.feedContent.text ?? "")
        
        attributedString.addAttribute(.foregroundColor, value: UIColor(named: "dgColor")!, range: ((cell.feedContent.text)! as NSString).range(of: "Q."))
        
        cell.feedContent.attributedText = attributedString
        
        return cell
    }
}

extension NeighborViewController: UITableViewDelegate {
    
}






















































//extension NeighborViewController: UITableViewDataSource, UITableViewDelegate {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return contentsList.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
////        if indexPath.row == 0 {
////            guard let cell = tableView.dequeueReusableCell(withIdentifier: "CateTableCell", for: indexPath) as? CateTableCell else {
////                return UITableViewCell()
////            }
////            let cellData = category[indexPath.row]
////            cell.configure(cellData)
////
////            return cell
////        } else if indexPath.row == 1 {
////            guard let cell = tableView.dequeueReusableCell(withIdentifier: "SecondTableCell", for: indexPath) as? SecondTableCell else {
////                return UITableViewCell()
////            }
////            let cellData = cateAll[indexPath.row]
////            cell.configure(cellData)
////            return cell
////        } else {
////            guard let cell = tableView.dequeueReusableCell(withIdentifier: "NeighborFeedCell", for: indexPath) as? NeighborFeedCell else {
////                return UITableViewCell()
////            }
////            let cellData = contentsList[indexPath.row]
////            cell.configure(cellData)
////
////            cell.cateView.layer.cornerRadius = 3
////
////            return cell
////        }
//    }
//
//    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
////        guard let tableViewCell = cell as? CateTableCell else {
////            return
////        }
////        tableViewCell.setCollectionViewDataSourceDelgate(dataSourceDelegate: self, forRow: indexPath.row)
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
////        // 첫 번째 행만 높이 120
////        // 나머진 자동
////        if indexPath.row == 0 {
////            return 120
////        } else if indexPath.row == 1 {
////            return 300
////        } else {
////            return UITableView.automaticDimension
////        }
//    }
//}
//
////extension NeighborViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
////    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
////        return 2
////    }
////
////    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
////        switch indexPath.row {
////        case 0:
////            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CateCollectionCell", for: indexPath) as! CateCollectionCell
////            let cellData = category[indexPath.row]
////            cell.configure(cellData)
////
////            return cell
////        case 1:
////            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SecondCollectionCell", for: indexPath) as! SecondCollectionCell
////            let cellData = cateAll[indexPath.row]
////            cell.configure(cellData)
////
////            return cell
////
////        default:
////            return UICollectionViewCell()
////        }
////
//////        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CateCollectionCell", for: indexPath) as? CateCollectionCell else {
//////            return UICollectionViewCell()
//////        }
//////        let cellData = category[indexPath.item]
//////        cell.configure(cellData)
//////
//////        return cell
////    }
////
////    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
////
////        return CGSize(width: 75, height: 100)
////    }
//}
