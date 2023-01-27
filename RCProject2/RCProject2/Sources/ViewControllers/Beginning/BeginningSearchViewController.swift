//
//  BeginningSearchViewController.swift
//  RCProject2
//
//  Created by Steve on 2022/10/30.
//

import UIKit

class BeginningSearchViewController: UIViewController, UITextFieldDelegate {
    
    let locationList: [Location] = Location.list
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        
        // 서치뷰 배경색 제거
        searchBar.searchTextField.backgroundColor = UIColor.clear
        searchBar.searchTextField.delegate = self
        self.hideKeyboardWhenTappedAround()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        // 테이블뷰 상단 여백 제거
        tableView.sectionHeaderTopPadding = 0
        
    }
    
    @IBAction func backButtonDidTap(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
}

// MARK: - 스와이프로 뒤로 가기
extension BeginningSearchViewController: UIGestureRecognizerDelegate {
    
  func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
    return true // or false
  }
    
}

extension BeginningSearchViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locationList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "LocationListCell", for: indexPath) as? LocationListCell else {
            return UITableViewCell()
        }

        let cellData = locationList[indexPath.row]
        cell.configure(cellData)

        return cell
    }
    
    // MARK: 테이블뷰 헤더 커스텀
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: tableView.frame.width, height: 45))
                
        let label = UILabel()
        label.frame = CGRect.init(x: 20, y: 0, width: headerView.frame.width, height: headerView.frame.height)
        label.text = "근처 동네"
        label.font = .systemFont(ofSize: 13, weight: .medium)
        label.textColor = .label
        label.backgroundColor = UIColor.systemBackground
                
        headerView.addSubview(label)
                
        return headerView
    }
    
}

extension BeginningSearchViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let locationList = locationList[indexPath.row]
        print(">>> Selected : \(locationList.area)")
        
        if let controller = self.storyboard?.instantiateViewController(identifier: "AuthenticationViewController") {
            self.navigationController?.pushViewController(controller, animated: true)
        }
    }
}

extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    @objc
    func dismissKeyboard() {
        view.endEditing(true)
    }
}
