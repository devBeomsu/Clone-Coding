//
//  VideoViewController.swift
//  SimpleBMI
//
//  Created by 심범수 on 2022/08/15.
//

import UIKit
import AVKit

class VideoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /// 동영상 플레이 이미지 버튼
    /// - Parameter sender: UIButton
    @IBAction func playVideo(_ sender: UIButton) {
        let file: String? = Bundle.main.path(forResource: "bmi", ofType: "mp4")
        let url = NSURL(fileURLWithPath: file!)
        let playerController = AVPlayerViewController()
        let player = AVPlayer(url: url as URL)
        playerController.player = player
        self.present(playerController, animated: true)
        player.play()
    }
}
