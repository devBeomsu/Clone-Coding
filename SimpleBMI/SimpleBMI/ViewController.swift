import UIKit
import AudioToolbox

class ViewController: UIViewController {
    // MARK: - Touches Began
    /**
     화면의 빈 공간을 터치하면 키보드가 내려갑니다.
     
     - View Controller 클래스 안에 아래 코드 입력
     
     ````
     override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
         self.view.endEditing(true)
     }
     ````
     
     - 관련 링크: [Danie Log](https://dannie.dev/14)
     
     - note: 휴대폰으로 실행했을 때 Text Field를 눌러 키보드를 오픈하는건 가능한데 다시 내리는 것이 불가능했음
     
     ---
     
     당연히 코드 없이도 될 줄 알았는데 뒤통수 맞음
     
      - Parameters:
        - touches: 빈 공간 터치
        - event: 키보드 내리기
     */
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?){
        self.view.endEditing(true)
    }
    
    // MARK: - @IBOutlet
    /**
     키와 해당되는 Text Field를 @IBOutlet으로 연결
     
     **Outlet Variable이란?**
     
     - 스토리보드에서 추가한 객체의 내용을 변경하거나 특정한 동작을 하기 위해서 해당하는 객체에 접근하기 위한 변수이다.
     
     */
    @IBOutlet weak var txtHeight: UITextField!
    /**
     몸무게와 해당되는 Text Field를 @IBOutlet으로 연결
     */
    @IBOutlet weak var txtWeight: UITextField!
    /**
     계산된 결과값을 나타내는 레이블
     */
    @IBOutlet weak var bmiResult: UILabel!
    
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
    @IBAction func gender(_ sender: UISegmentedControl) {
        let generator = UINotificationFeedbackGenerator()
        generator.notificationOccurred(.success)
        
        let generator2 = UIImpactFeedbackGenerator(style: .medium)
        generator2.impactOccurred()
    }
    
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
}
