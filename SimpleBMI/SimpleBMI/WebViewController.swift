//
//  WebViewController.swift
//  SimpleBMI
//
//  Created by 심범수 on 2022/08/15.
//

import UIKit
import WebKit

class WebViewController: UIViewController {
    /// 웹을 나타내기 위한 뷰
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// 버튼 클릭 시 네이버 메인화면으로 접속
    /// - Parameter sender: 버튼
    @IBAction func goNaver(_ sender: UIButton) {
        guard let url = URL(string: "https://m.naver.com") else { return }
        let request = URLRequest(url: url)
        webView?.load(request)
    }
}
