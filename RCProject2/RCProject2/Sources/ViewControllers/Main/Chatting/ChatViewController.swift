//
//  ChatViewController.swift
//  RCProject2
//
//  Created by Steve on 2022/11/03.
//

import UIKit

class ChatViewController: UIViewController {
    
    var chatList: [Chat] = Chat.chat

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        let nibName = UINib(nibName: "ChatListCell", bundle: nil)
        tableView.register(nibName, forCellReuseIdentifier: "ChatListCell")
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 100
    }
}

extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return chatList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ChatListCell") as? ChatListCell else {
            return UITableViewCell()
        }
        let cellData = chatList[indexPath.row]
        cell.configure(cellData)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            chatList.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .bottom)
        }
    }
}

extension ChatViewController: UITableViewDelegate {
}
