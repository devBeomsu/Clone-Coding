# Swift-SimpleBMI

# BMI-Calculator-App
유튜브 BMI 앱 만들기 응용버전
<img width="1307" alt="bmi" src="https://user-images.githubusercontent.com/97215148/185423120-317152dd-29a1-42ab-9b9e-7f68ed601f73.png">

강의의 앱 디자인은 이렇게 되어 있었고 디자인과 기능을 조금 더 추가하여 아래의 앱이 완성되었습니다.

<img width="1440" alt="1" src="https://user-images.githubusercontent.com/97215148/185423893-3df1a7c3-6a3e-49b1-b854-62c205fc1469.png">

먼저, 아래 코드를 보시면 AppDelegate에서 LaunchScreen 시간을 3초로 설정한 코드입니다.

````swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        sleep(3)
        return true
    }
````
<img width="1440" alt="2" src="https://user-images.githubusercontent.com/97215148/185423911-d3ced6fc-b471-44c0-b5f9-ef59810bd98a.png">
 
맨 위부터 차례대로 설명하자면 Segmented Control을 이용해서 남성과 여성으로 구분 지어놓았습니다.
클릭할 때마다 Haptics Vibration을 추가해서 심심함을 제거하였습니다. 코드는 아래와 같이 작성되었습니다.
````swift
// MARK: - @IBAction
    /**
     SegmentedControl에 Haptics Vibration 추가
     
     **Action이란?**
     
     ---
     해당 View가 특정 이벤트를 발생시켰을 경우 취하는 행동
     
     - Framework 추가
     ````
     import AudioToolBox
     ````
     - 햅틱을 추가할 대상에 @IBAction으로 연결
     
     ---
     
     - 연결된 코드 블록 안에서 아래 코드 작성
     ````
     let generator = UINotificationFeedbackGenerator()
     generator.notificationOccurred(.success)
     
     let generator2 = UIImpactFeedbackGenerator(style: .medium) // style은 햅틱 강도를 지정해줄 수 있다.
     generator2.impactOccurred()
     ````
     
     */
    @IBAction func sex(_ sender: UISegmentedControl) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
        
        let generator2 = UIImpactFeedbackGenerator(style: .medium)
        generator2.impactOccurred()
    }
````

다음은 BMI를 계산해주는 역할을 하는 코드입니다.
````swift
// MARK: - BMI 계산
    /**
     BMI 계산하는 공식과 조건문
     
     **BMI 계산 공식**
     
     - 몸무게(kg) ÷ ( 키(cm) x 키(cm) x 0.0001 )
     
     ````
     let bmi = weight / (height * height * 0.0001)
     ````
     
     - cm를 m 단위로 바꿔주기 위해 0.0001을 곱해준 것
     
     ---
     - 나무위키: [BMI](https://namu.wiki/w/BMI)
     
     ---
     
     **조건문**
     
     **- 빈 칸이 있는 경우**
     - Height 입력칸 또는 Weight 입력칸이 비어 있으면 'bmiResult' 레이블에 "빈 칸을 채워주세요!"라는 문장 띄우기
     ````
     if txtHeight.text == "" || txtWeight.text == "" {
         print("Input error")
         bmiResult.text = "빈 칸을 채워주세요!"
         return
     }
     ````
     **- 빈 칸이 없는 경우**
     - height 라는 상수를 선언
     - text에 값이 무조건 들어가는데 옵셔널 타입으로 생성됐기 때문에 언래핑한 것
     - 텍스트 필드에는 정수나 실수가 들어가서 Double 형을 선언하고 값이 무조건 있기 때문에 언래핑한 것
     ````
     let height = Double(txtHeight.text!)!
     ````
     - 공식을 이용해서 계산하기
     - 0.0001 을 곱해준 것은 cm 단위로 입력할 것인데 이를 공식에 맞는 m 단위로 바꾸기 위해서
     ````
     let bmi = weight / (height * height * 0.0001)
     ````
     - format은 소수점을 제한적으로 출력하기 위해 사용
     - %.1f는 소수점 이하 1자리까지만 출력
     - 나머지 소수점들은 입력한 소수점 자리에 자동으로 반올림 처리
     ````
     let shortenedBmi = String(format: "%.1f", bmi)
     ````
     - 변수 body는 결과에 따라 바뀌는 텍스트가 출력되기 때문에 큰따옴표(빈 문자)만 입력
     ````
     var body = ""
     ````
     - 변수 color를 만들어주고 아무 색을 선언해준다.
     - 스토리보드에서 이미 색을 주었기 때문에 아무 색을 한 것
     ````
     var color = UIColor.black
     ````
     */
    @IBAction func calcBmi(_ sender: UIButton) {
        if txtHeight.text == "" || txtWeight.text == "" {
            print("Input error")
            bmiResult.text = "빈 칸을 채워주세요!"
            return
        } else {
            let height = Double(txtHeight.text!)!
            let weight = Double(txtWeight.text!)!
            print(height, weight)
            let bmi = weight / (height * height * 0.0001)
            let shortenedBmi = String(format: "%.1f", bmi)
            var body = ""
            var color = UIColor.black
            
            if bmi >= 40 {
                color = UIColor(displayP3Red: 143/255, green: 0/255, blue: 0/255, alpha: 1)
                body = "3단계 비만😭"
            } else if bmi >= 30 && bmi < 40 {
                color = UIColor(displayP3Red: 255/255, green: 0/255, blue: 0/255, alpha: 1)
                body = "2단계 비만😢"
            } else if bmi >= 25 && bmi < 30 {
                color = UIColor(displayP3Red: 255/255, green: 140/255, blue: 0/255, alpha: 1)
                body = "1단계 비만🥲"
            } else if bmi >= 18.5 && bmi < 25 {
                color = UIColor(displayP3Red: 0/255, green: 169/255, blue: 81/255, alpha: 1)
                body = "정상😊"
            } else {
                color = UIColor(displayP3Red: 0/255, green: 0/255, blue: 255/255, alpha: 1)
                body = "저체중🥹"
            }
            
            bmiResult.backgroundColor = color
            bmiResult.text = "BMI : \(shortenedBmi), 판정 : \(body)"
        }
    }
````

<img width="1440" alt="3" src="https://user-images.githubusercontent.com/97215148/185423920-713bb75e-d034-4147-a5de-c05c54bcd9e9.png">

다음은 Video View Controller입니다. 생각보다 간단한 코드로 완성시킬 수 있었습니다.
먼저 ````import AVKit```` 를 추가해주어야 하고 아래 코드를 입력하면 완성됩니다.
````swift
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
````

<img width="1440" alt="4" src="https://user-images.githubusercontent.com/97215148/185423924-e30f7ced-a47b-44ba-926d-420b3c89c59b.png">

다음은 Web View Controller입니다.
웹뷰도 간단한 코드로 완성 시킬 수 있었습니다.
마찬가지로 ````import WebKit```` 해주고 아래 코드를 작성합니다.

````swift
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

````

마지막으로 탭바는 유튜브에 있는 코드를 그대로 가져와서 색과 이미지만 바꾸어 주었기 때문에 
ReadMe에는 따로 작성하지 않고 영상 링크를 첨부하겠습니다.

[Coding With Usman](https://www.youtube.com/watch?v=_N4lxebmJ2U)
