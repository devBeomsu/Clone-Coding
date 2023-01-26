//
//  MainViewController.swift
//  RCProject1
//
//  Created by Steve on 2022/10/24.
//

import UIKit
import AudioToolbox
import AVFoundation
import Gifu

enum TimerStatus {
    case start
    case pause
    case end
}

class TimerViewController: UIViewController {
    
    @IBOutlet weak var closeBtnView: UIView!
    
    @IBOutlet weak var circleView: UIView!
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var timeLabel: UILabel!
    
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var gifAnimationView: GIFImageView!
    
    @IBOutlet weak var cancelBtn: UIButton!
    @IBOutlet weak var startBtn: UIButton!
    
    @IBOutlet weak var threeBtns: UIStackView!
    @IBOutlet weak var checkBtn: UIButton!
    
    @IBOutlet weak var presentTime: UIButton!
    
    var duration = 60
    
    /// 타이머가 시작된 상태면 start의 열거형 값
    /// 일시정지된 상태면 pause의 열거형 값
    /// 종료된 상태면 end의 열거형 값
    var timerStatus: TimerStatus = .end // 타이머의 상태를 가지고 있는 프로퍼티
    
    /// GCD(Grand Central Dispatch)
    /// -> 작업을 병렬적으로 처리하기 위해 애플이 제공해주는 API
    /// -> 쓰레드를 만들거나 관리해야 하는 어려운 작업들을 맡아서 처리해준다.
    var timer: DispatchSourceTimer?
    
    var currentSeconds = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        closeBtnView.layer.cornerRadius = 0.5 * closeBtnView.bounds.size.width
        
        circleView.layer.cornerRadius = 10
        
        checkBtn.layer.masksToBounds = false
        checkBtn.layer.shadowOffset = CGSize(width: 0, height: 2)
        checkBtn.layer.shadowRadius = 2
        checkBtn.layer.shadowOpacity = 0.5
        
        gifAnimationView.layer.cornerRadius = 10
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        playGifVideo()
    }

    private func playGifVideo() {
        DispatchQueue.main.async { [weak self] in
            self?.gifAnimationView.animate(withGIFNamed: "morning")
        }
    }
    
    func startTimer() {
        if self.timer == nil {
            /// 어떤 쓰레드 큐에서 반복 동작할 것인지 설정할 수 있다.
            /// 타이머가 작동할 때마다 UI 관련 작업을 해야 한다.(남은 시간을 표시하는 레이블을 업데이트 할 때)

            /// UI 관련 작업을 할 때는 queue가 무조건 main이 되어야 한다.
            /// main 쓰레드는 iOS에서 오직 한 개만 존재하는 쓰레드인데
            /// 우리가 일반적으로 작성하는 대부분의 코드는 메인 쓰레드에서 실행된다.
            /// 그 이유는 우리가 작성하는 코드가 코코아에서 실행되는데 이 코코아가 코드를 메인 쓰레드에서 호출하기 때문이다.
            /// 메인 쓰레드에서 중요한 것 중 하나는 메인 쓰레드가 인터페이스 쓰레드라고도 불리는 점인데
            /// 유저가 인터페이스에 접근하면 이벤트는 메인 쓰레드에 전달되고 우리가 작성한 코드는 위에 반응한다.
            /// 즉, 인터페이스와 관련된 코드는 반드시 메인 쓰레드에 작성되어야 한다.
            self.timer = DispatchSource.makeTimerSource(flags: [], queue: .main)
            
            /// deadline에 .now는 바로 동작하는 것이고 +1 은 1초 뒤 동작
            /// repeating은 1초마다 반복
            self.timer?.schedule(deadline: .now() + 1, repeating: 1)
            
            // 1초에 한 번씩 핸들러 클로저 안에 구현되어 있는 코드 실행
            self.timer?.setEventHandler(handler: { [weak self] in
                guard let self = self else { return }
                self.currentSeconds -= 1
                let minutes = (self.currentSeconds % 3600) / 60
                let seconds = (self.currentSeconds % 3600) % 60
                self.timerLabel.text = String(format: "%02d:%02d", minutes, seconds)
                
                if self.currentSeconds <= 0 {
                    self.stopTimer()
                    AudioServicesPlaySystemSound(1005)
                }
            })
            self.timer?.resume()
        }
    }
    
    func stopTimer() {
        /// 타이머를 서스펜드 메서드로 호출해서 일시정지를 하게되면 아직 수행해야할 작업이 있음을 의미하기 때문에 정지된 타이머에 닐을 대입하면 런타임 에러가 발생한다.
        /// 그렇기 때문에 일시정지 된 타이머를 중지하고 nil을 대입하려면 resume 메서드를 호출해야 한다.
        if self.timerStatus == .pause {
            self.timer?.resume()
        }
        
        UIView.animate(withDuration: 0.5, animations: {
            self.gifAnimationView.alpha = 0
            self.datePicker.alpha = 1
        })
        
        self.timerStatus = .end
        self.cancelBtn.isEnabled = false
        self.startBtn.isEnabled = true
        self.timer?.cancel()
        /// 타이머를 종료할 때 타이머에 nil을 꼭 할당해서 메모리에서 해제시켜줘야 한다.
        /// 해제시키지 않으면 화면을 벗어나도 타이머가 계속 동작된다.
        self.timer = nil
    }
    
    @IBAction func closeButton(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    
    @IBAction func cancelButton(_ sender: UIButton) {
        switch self.timerStatus {
        case .start, .pause:
            self.stopTimer()
            self.timerLabel.text = "00:00"
            
        default:
            break
        }
    }
    
    @IBAction func startButton(_ sender: UIButton) {
        self.duration = Int(self.datePicker.countDownDuration)
        switch self.timerStatus {
        case .end:
            self.currentSeconds = self.duration
            self.timerStatus = .start
            UIView.animate(withDuration: 1, animations: {
                self.gifAnimationView.alpha = 1
                self.datePicker.alpha = 0
            })
            self.startBtn.isEnabled = false
            self.cancelBtn.isEnabled = true
            self.startTimer()
            
        case .start:
            self.timerStatus = .pause
            self.startBtn.isSelected = false
        
        case .pause:
            self.timer?.resume()
            self.startBtn.isEnabled = false
            self.timerStatus = .start
        }
    }
    
    @IBAction func pauseButton(_ sender: UIButton) {
        switch self.timerStatus {
        case .start:
            self.timerStatus = .pause
            self.timer?.suspend()
            self.startBtn.isEnabled = true
        
        default:
            break
        }
    }
    
    @IBAction func completeButton(_ sender: UIButton) {
    }
}
