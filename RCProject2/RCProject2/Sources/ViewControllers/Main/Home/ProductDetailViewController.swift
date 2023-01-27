//
//  ProductDetailViewController.swift
//  RCProject2
//
//  Created by Steve on 2022/10/31.
//

import UIKit

class ProductDetailViewController: UIViewController, UIGestureRecognizerDelegate {
    
    let watchedWithList: [WatchedWith] = WatchedWith.list
    
    let underlineBtn0: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: 12, weight: .medium),
        .underlineStyle: NSUnderlineStyle.single.rawValue
    ]
    
    let underlineBtn1: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: 12, weight: .medium),
        .underlineStyle: NSUnderlineStyle.single.rawValue
    ]
    
    let underlineBtn2: [NSAttributedString.Key: Any] = [
        .font: UIFont.systemFont(ofSize: 15, weight: .medium),
        .underlineStyle: NSUnderlineStyle.single.rawValue
    ]
    
    @IBOutlet weak var navBar: UINavigationBar!
    @IBOutlet weak var navBarBottomLine: UIView!
    
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var sideMenuButton: UIButton!
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var tempButton: UIButton!
    @IBOutlet weak var cateButton: UIButton!
    @IBOutlet weak var moreView: UIView!
    @IBOutlet weak var moreLabel: UILabel!
    
    @IBOutlet weak var firstImage: UIImageView!
    @IBOutlet weak var secondImage: UIImageView!
    @IBOutlet weak var thirdImage: UIImageView!
    @IBOutlet weak var lastImage: UIImageView!
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var like: Bool = true
    @IBOutlet weak var likeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navBar.transparentNavigationBar()
        navBar.tintColor = .black
        
        scrollView.delegate = self
        
        collectionView.dataSource = self
        collectionView.delegate = self
        
        if let flowLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            flowLayout.estimatedItemSize = .zero
        }
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        profileImage.layer.cornerRadius = profileImage.bounds.size.width / 2
        
        firstImage.layer.cornerRadius = 5
        secondImage.layer.cornerRadius = 5
        thirdImage.layer.cornerRadius = 5
        lastImage.layer.cornerRadius = 5
        
        let attributeString0 = NSMutableAttributedString(
                string: "매너온도",
                attributes: underlineBtn0
             )
        tempButton.setAttributedTitle(attributeString0, for: .normal)
        
        let attributeString1 = NSMutableAttributedString(
                string: "반려동물",
                attributes: underlineBtn1
             )
        cateButton.setAttributedTitle(attributeString1, for: .normal)
        
        let attributedString = NSMutableAttributedString(string: moreLabel.text ?? "")
        let font = UIFont.boldSystemFont(ofSize: 14)

        attributedString.addAttribute(.underlineStyle, value: NSUnderlineStyle.single.rawValue, range: ((moreLabel.text ?? "") as NSString).range(of: "자세히 보기"))
        attributedString.addAttribute(.underlineColor, value: UIColor.black, range: ((moreLabel.text ?? "") as NSString).range(of: "자세히 보기"))
        attributedString.addAttribute(.font, value: font, range: ((moreLabel.text ?? "") as NSString).range(of: "거래팁"))
        attributedString.addAttribute(.font, value: font, range: ((moreLabel.text ?? "") as NSString).range(of: "자세히 보기"))
        
        moreLabel.attributedText = attributedString
        
        moreView.layer.cornerRadius = 10
    }
    
    @IBAction func backButtonDidTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func homeButtonDidTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: false)
    }
    
    @IBAction func shareButtonDidTap(_ sender: UIButton) {
    }
    
    @IBAction func sideMenuButtonDidTap(_ sender: UIButton) {
    }
    
    @IBAction func likeButtonDidTap(_ sender: UIButton) {
        like = !like
        if like {
            likeButton.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            likeButton.tintColor = (UIColor(named: "dgColor"))
        } else {
                likeButton.setImage(UIImage(systemName: "heart"),for: .normal)
        }
    }
}

extension ProductDetailViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return watchedWithList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "WatchedWithCell", for: indexPath) as? WatchedWithCell else { return UICollectionViewCell() }
        let cellData = watchedWithList[indexPath.item]
        cell.configure(cellData)

        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let interItemSpacing: CGFloat = 10
        let width = (collectionView.bounds.width - interItemSpacing * 2) / 2
        let height = width

        return CGSize(width: width, height: height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        print(scrollView.contentOffset.y)
        
        let offset = scrollView.contentOffset.y / 190
        
        if scrollView.contentOffset.y >= 190 {
            let color = UIColor(red: 1, green: 1, blue: 1, alpha: offset)
            
            self.navBar.tintColor = UIColor(hue: 1, saturation: offset, brightness: 1, alpha: 1)
            self.navBar.backgroundColor = color
            
            self.navBarBottomLine.tintColor = UIColor(hue: 1, saturation: offset, brightness: 1, alpha: 1)
            self.navBarBottomLine.backgroundColor = UIColor(named: "divider")

            self.backButton.setImage(UIImage(named: "left.black"), for: .normal)
            self.homeButton.setImage(UIImage(named: "home.black"), for: .normal)
            self.shareButton.setImage(UIImage(named: "share.black"), for: .normal)
            self.sideMenuButton.setImage(UIImage(named: "dots.black"), for: .normal)
        } else {
            let color = UIColor(red: 1, green: 1, blue: 1, alpha: offset)
            
            self.navBar.tintColor = UIColor(hue: 1, saturation: offset, brightness: 1, alpha: 1)
            self.navBar.backgroundColor = color
            
            self.navBarBottomLine.tintColor = UIColor(hue: 1, saturation: offset, brightness: 1, alpha: 1)
            self.navBarBottomLine.backgroundColor = UIColor.clear
            
            self.backButton.setImage(UIImage(named: "left.white"), for: .normal)
            self.homeButton.setImage(UIImage(named: "home.white"), for: .normal)
            self.shareButton.setImage(UIImage(named: "share.white"), for: .normal)
            self.sideMenuButton.setImage(UIImage(named: "dots.white"), for: .normal)
        }
    }
}

extension UINavigationBar {
    func transparentNavigationBar() {
        self.setBackgroundImage(UIImage(), for: .default)
        self.shadowImage = UIImage()
        self.isTranslucent = true
    }
}
