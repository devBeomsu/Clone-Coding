//
//  My.swift
//  RCProject2
//
//  Created by Steve on 2022/11/04.
//

import Foundation
import UIKit

struct My {
    let iconName: UIImage!
//    let iconName: String
    let myList: String
}

extension My {
    static let list: [My] = [
        My(iconName: UIImage(named: "document"), myList: "판매내역"),
        My(iconName: UIImage(named: "shopping-bag"), myList: "구매내역"),
        My(iconName: UIImage(named: "heart"), myList: "관심목록"),
        My(iconName: UIImage(named: "notebook"), myList: "당근가계부"),
        
        My(iconName: UIImage(named: "contract"), myList: "동네생활 글/댓글"),
        
        My(iconName: UIImage(named: "shop"), myList: "비즈프로필 관리"),
        My(iconName: UIImage(named: "loudspeaker"), myList: "광고"),
        My(iconName: UIImage(named: "list"), myList: "동네홍보 글"),
        
        My(iconName: UIImage(named: "location"), myList: "내 동네 설정"),
        My(iconName: UIImage(named: "target"), myList: "동네 인증하기"),
        My(iconName: UIImage(named: "tag"), myList: "알림 키워드 설정"),
        My(iconName: UIImage(named: "headphones"), myList: "자주 묻는 질문"),
        My(iconName: UIImage(named: "mail-inbox-app"), myList: "친구초대")
    ]
}

//extension My {
//    static let list: [My] = [
//        My(iconName: "document", myList: "판매내역"),
//        My(iconName: "shopping-bag", myList: "구매내역"),
//        My(iconName: "heart", myList: "관심목록"),
//        My(iconName: "notebook", myList: "당근가계부"),
//
//        My(iconName: "contract", myList: "동네생활 글/댓글"),
//
//        My(iconName: "shop", myList: "비즈프로필 관리"),
//        My(iconName: "loudspeaker", myList: "광고"),
//        My(iconName: "list", myList: "동네홍보 글"),
//
//        My(iconName: "location", myList: "내 동네 설정"),
//        My(iconName: "target", myList: "동네 인증하기"),
//        My(iconName: "tag", myList: "알림 키워드 설정"),
//        My(iconName: "headphones", myList: "자주 묻는 질문"),
//        My(iconName: "mail-inbox-app", myList: "친구초대")
//    ]
//}
