//
//  HomeViewController.swift
//  RCProject2
//
//  Created by Steve on 2022/10/31.
//

import UIKit

class HomeViewController: UIViewController, UIGestureRecognizerDelegate {
    
    let productList: [Product] = Product.list
    
    @IBOutlet weak var navView: UIView!
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var plusButtonView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        
        plusButtonView.layer.cornerRadius = plusButtonView.bounds.size.width / 2
        plusButtonView.layer.shadowColor = UIColor.lightGray.cgColor
        plusButtonView.layer.shadowOffset = CGSize(width: 0, height: 2)
        plusButtonView.layer.shadowRadius = 4
        plusButtonView.layer.shadowOpacity = 1
        plusButtonView.layer.masksToBounds = false
        
        self.tabBarController?.tabBar.layer.borderWidth = 0.2
        self.tabBarController?.tabBar.layer.borderColor = UIColor.gray.cgColor
        self.tabBarController?.tabBar.clipsToBounds = true
        
        navView.layer.borderWidth = 0.2
        navView.layer.borderColor = UIColor.lightGray.cgColor
        navView.clipsToBounds = true
    }

}

extension HomeViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ProductListCell", for: indexPath) as? ProductListCell else {
            return UITableViewCell()
        }
        let cellData = productList[indexPath.row]
        cell.configure(cellData)
        
        cell.productImage.layer.cornerRadius = 5
        
        return cell
    }
}

extension HomeViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let productDetail = self.storyboard?.instantiateViewController(identifier: "ProductDetailViewController") {
            self.navigationController?.pushViewController(productDetail, animated: true)
        }
    }
}
