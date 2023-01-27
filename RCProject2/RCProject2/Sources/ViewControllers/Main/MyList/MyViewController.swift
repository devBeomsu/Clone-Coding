//
//  MyViewController.swift
//  RCProject2
//
//  Created by Steve on 2022/11/04.
//

import UIKit

class MyViewController: UIViewController {
    
    let myList: [My] = My.list
    let sections = ["나의 거래", "나의 동네생활", "나의 비즈니스", "기타"]
    
    let firstSection = [
        My(iconName: UIImage(named: "document"), myList: "판매내역"),
        My(iconName: UIImage(named: "shopping-bag"), myList: "구매내역"),
        My(iconName: UIImage(named: "heart"), myList: "관심목록"),
        My(iconName: UIImage(named: "notebook"), myList: "당근가계부"),
    ]
    
    let secondSection = [
        My(iconName: UIImage(named: "contract"), myList: "동네생활 글/댓글")
    ]
    
    let thirdSection = [
        My(iconName: UIImage(named: "shop"), myList: "비즈프로필 관리"),
        My(iconName: UIImage(named: "loudspeaker"), myList: "광고"),
        My(iconName: UIImage(named: "list"), myList: "동네홍보 글")
    ]
    
    let lastSection = [
        My(iconName: UIImage(named: "location"), myList: "내 동네 설정"),
        My(iconName: UIImage(named: "target"), myList: "동네 인증하기"),
        My(iconName: UIImage(named: "tag"), myList: "알림 키워드 설정"),
        My(iconName: UIImage(named: "headphones"), myList: "자주 묻는 질문"),
        My(iconName: UIImage(named: "mail-inbox-app"), myList: "친구초대")
    ]

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let profileNibName = UINib(nibName: "MyProfileCell", bundle: nil)
        tableView.register(profileNibName, forCellReuseIdentifier: "MyProfileCell")
        if let profileView = profileNibName.instantiate(withOwner: self, options: nil).first as? UIView {
            tableView.tableHeaderView = profileView
        }
        
        let nibName = UINib(nibName: "MyListCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "MyListCell")
        
        tableView.separatorStyle = .none
        tableView.layoutMargins = .zero
        tableView.rowHeight = 55
        tableView.estimatedRowHeight = UITableView.automaticDimension
        tableView.backgroundColor = .systemBackground
    }

}

extension MyViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return firstSection.count
        } else if section == 1 {
            return secondSection.count
        } else if section == 2 {
            return thirdSection.count
        } else {
            return lastSection.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myListCell: MyListCell = self.tableView.dequeueReusableCell(withIdentifier: "MyListCell", for: indexPath) as! MyListCell

        if indexPath.section == 0 {
            myListCell.myListImage.image = firstSection[indexPath.row].iconName
            myListCell.myListLabel.text = firstSection[indexPath.row].myList
        } else if indexPath.section == 1 {
            myListCell.myListImage.image = secondSection[indexPath.row].iconName
            myListCell.myListLabel.text = secondSection[indexPath.row].myList
        } else if indexPath.section == 2 {
            myListCell.myListImage.image = thirdSection[indexPath.row].iconName
            myListCell.myListLabel.text = thirdSection[indexPath.row].myList
        } else {
            myListCell.myListImage.image = lastSection[indexPath.row].iconName
            myListCell.myListLabel.text = lastSection[indexPath.row].myList
        }

        return myListCell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height))
        header.backgroundColor = .systemBackground
        let headerTitle = UILabel(frame: CGRect(x: 20, y: 20, width: view.frame.size.width, height: 20))
        headerTitle.text = sections[section]
        headerTitle.font = .systemFont(ofSize: 17, weight: .semibold)
        
        header.addSubview(headerTitle)
        
        return header
    }
}

extension MyViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = UIView()
        
        if section == 0 {
            footer.backgroundColor = UIColor(named: "divider")
        } else if section == 1 {
            footer.backgroundColor = UIColor(named: "divider")
        } else if section == 2 {
            footer.backgroundColor = UIColor(named: "divider")
        } else {
            footer.backgroundColor = .clear
        }
        
        return footer
    }
}
