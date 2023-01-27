//
//  Locations.swift
//  RCProject2
//
//  Created by Steve on 2022/10/30.
//

import Foundation

struct Location {
    let area: String
}

extension Location {
    static let list: [Location] = [
        Location(area: "서울 동작구 노량진제1동"),
        Location(area: "서울 동작구 노량진동"),
        Location(area: "서울 동작구 본동"),
        Location(area: "서울 동작구 상도제2동"),
        Location(area: "서울 동작구 노량진제2동"),
        Location(area: "서울 동작구 상도1동"),
        Location(area: "서울 영등포구 여의동"),
        Location(area: "서울 동작구 상도제4동"),
        Location(area: "서울 동작구 상도동"),
        Location(area: "서울 동작구 상도제1동"),
        
        Location(area: "서울 용산구 이촌제2동"),
        Location(area: "서울 동작구 대방동"),
        Location(area: "서울 용산구 이촌동"),
        Location(area: "서울 동작구 상도제3동"),
        Location(area: "서울 동작구 흑석동"),
        Location(area: "서울 영등포구 신길제1동"),
        Location(area: "서울 영등포구 신길제7동"),
        Location(area: "서울 용산구 한강로3가"),
        Location(area: "서울 동작구 신대방제2동"),
        Location(area: "서울 용산구 원효로4가"),
        
        Location(area: "서울 영등포구 여의도동"),
        Location(area: "서울 용산구 청암동"),
        Location(area: "서울 관악구 성현동"),
        Location(area: "서울 관악구 청림동"),
        Location(area: "서울 용산구 원료로제2동"),
        Location(area: "서울 용산구 이촌제1동"),
        Location(area: "서울 용산구 산천동"),
        Location(area: "서울 용산구 원효로3가"),
        Location(area: "서울 용산구 신창동"),
        Location(area: "서울 마파구 마포동"),
        
        Location(area: "서울 용산구 한강로동"),
        Location(area: "서울 동작구 동작동"),
        Location(area: "서울 관악구 보라매동"),
        Location(area: "서울 영등포구 신길동"),
        Location(area: "서울 용산구 한강로2가"),
        Location(area: "서울 용산구 용산동5가"),
        Location(area: "서울 영등포구 영등포동1가"),
        Location(area: "서울 관악구 은천동"),
        Location(area: "서울 마포구 토정동"),
        Location(area: "서울 용산구 신계동"),
        
        Location(area: "서울 영등포구 신길제4동"),
        Location(area: "서울 용산구 도원동"),
        Location(area: "서울 용산구 원효로2가"),
        Location(area: "서울 영등포구 영등포동2가"),
        Location(area: "서울 용산구 용문동"),
        Location(area: "서울 관악구 중앙동"),
        Location(area: "서울 관악구 신림동"),
        Location(area: "서울 영등포구 영등포동"),
        Location(area: "서울 영등포구 영등포본동"),
        Location(area: "서울 마포구 도화동"),
        
        Location(area: "서울 동작구 신대방동"),
        Location(area: "서울 용산구 원효료제1동"),
        Location(area: "서울 영등포구 신길제3동"),
        Location(area: "서울 영등포구 영등포동3가"),
        Location(area: "서울 마포구 용강동"),
        Location(area: "서울 용산구 문배동"),
        Location(area: "서울 영등포구 신길제6동"),
        Location(area: "서울 동작구 사당제5동"),
        Location(area: "서울 마포구 현석동"),
        Location(area: "서울 용산구 용산동3가"),
        
        Location(area: "서울 용산구 용산동6가"),
        Location(area: "서울 용산구 한강로1가"),
        Location(area: "서울 영등포구 영등포동5가"),
        Location(area: "서울 용산구 원효로1가"),
        Location(area: "서울 용산구 효창동"),
        Location(area: "서울 관악구 행운동"),
        Location(area: "서울 동작구 사당제3동"),
        Location(area: "서울 마포구 신공덕동"),
        Location(area: "서울 영등포구 영등포동7가"),
        Location(area: "서울 관악구 청룡동"),
        
        Location(area: "서울 마포구 신정동"),
        Location(area: "서울 동작구 사당동"),
        Location(area: "서울 관악구 신원동"),
        Location(area: "서울 영등포구 신길제5동"),
        Location(area: "서울 영등포구 영등포동4가"),
        Location(area: "서울 관악구 서원동"),
        Location(area: "서울 마포구 하중동"),
        Location(area: "서울 관악구 봉천동"),
        Location(area: "서울 관악구 신사동"),
        Location(area: "서울 용산구 청파동3가"),
        
        Location(area: "서울 마포구 구수동"),
        Location(area: "서울 동작구 사당제2동"),
        Location(area: "서울 영등포구 영등포동6가"),
        Location(area: "서울 마포구 당인동"),
        Location(area: "서울 영등포구 대림제1동"),
        Location(area: "서울 마포구 신수동"),
        Location(area: "서울 영등포구 영등포동8가"),
        Location(area: "서울 용산구 용산동4가"),
        Location(area: "서울 동작구 신대방제1동"),
        Location(area: "서울 마포구 염리동"),
        
        Location(area: "서울 영등포구 문래동"),
        Location(area: "서울 용산구 용산동1가"),
        Location(area: "서울 마포구 서강동"),
        Location(area: "서울 관악구 낙성대동"),
        Location(area: "서울 동작구 사당제4동"),
        Location(area: "서울 용산구 청파동2가"),
        Location(area: "서울 마포구 대흥동"),
        Location(area: "서울 관악구 서림동"),
        Location(area: "서울 용산구 청파동"),
        Location(area: "서울 마포구 상수동"),
        
        Location(area: "서울 서초구 방배본동"),
        Location(area: "서울 영등포구 문래동1가"),
        Location(area: "서울 영등포구 당산동1가"),
        Location(area: "서울 동작구 사당제1동"),
        Location(area: "서울 용산구 갈월동"),
        Location(area: "서울 용산구 서빙고동"),
        Location(area: "서울 마포구 공덕동"),
        Location(area: "서울 영등포구 도림동"),
        Location(area: "서울 영등포구 대림동"),
        Location(area: "서울 영등포구 문래동3가"),
        
        Location(area: "서울 관악구 인헌동"),
        Location(area: "서울 마포구 창전동"),
        Location(area: "서울 영등포구 대림제3동"),
        Location(area: "서울 용산구 청파동1가"),
        Location(area: "서울 영등포구 당산제1동"),
        Location(area: "서울 영등포구 당산동5가"),
        Location(area: "서울 영등포구 당산동4가"),
        Location(area: "서울 용산구 남영동"),
        Location(area: "서울 영등포구 당산동6가"),
        Location(area: "서울 용산구 동빙고동"),
        
        Location(area: "서울 영등포구 당산동3가"),
        Location(area: "서울 영등포구 당산동"),
        Location(area: "서울 영등포구 당산제2동"),
        Location(area: "서울 영등포구 문래동2가"),
        Location(area: "서울 관악구 대학동"),
        Location(area: "서울 관악구 조원동"),
        Location(area: "서울 영등포구 대림제2동"),
        Location(area: "서울 서초구 방배4동"),
        Location(area: "서울 영등포구 당산동2가"),
        Location(area: "서울 마포구 노고산동"),
        
        Location(area: "서울 마포구 아현동"),
        Location(area: "서울 관악구 미성동"),
        Location(area: "서울 용산구 서계동"),
        Location(area: "서울 관악구 삼성동"),
        Location(area: "서울 용산구 주성동"),
        Location(area: "서울 용산구 용산동2가"),
        Location(area: "서울 용산구 이태원제1동"),
        Location(area: "서울 서초구 반포본동"),
        Location(area: "서울 서초구 반포1동"),
        Location(area: "서울 서초구 반포2동"),
        
        Location(area: "서울 서초구 반포4동"),
        Location(area: "서울 서초구 반포동"),
        Location(area: "서울 영등포구 문래동4가"),
        Location(area: "서울 용산구 후암동"),
        Location(area: "서울 중구 만리동2가"),
        Location(area: "서울 용산구 동자동"),
        Location(area: "서울 중구 중림동"),
        Location(area: "서울 서초구 방배2동"),
        Location(area: "서울 관악구 남현동"),
        Location(area: "서울 용산구 이태원동"),
        
        Location(area: "서울 관악구 난곡동"),
        Location(area: "서울 용산구 보광동"),
        Location(area: "서울 용산구 이태원제2동"),
        Location(area: "서울 용산구 용산2가동"),
        Location(area: "서울 영등포구 양평동4가"),
        Location(area: "서울 구로구 구로제5동"),
        Location(area: "서울 영등포구 양평동1가"),
        Location(area: "서울 영등포구 양평동3가"),
        Location(area: "서울 중구 만리동1가"),
        Location(area: "서울 영등포구 양평제1동"),
        
        Location(area: "서울 영등포구 양평제2동"),
        Location(area: "서울 서초구 반포3동"),
        Location(area: "서울 서대문구 창천동"),
        Location(area: "서울 서초구 방배1동"),
        Location(area: "서울 서대문구 북아현동"),
        Location(area: "서울 서대문구 대현동"),
        Location(area: "서울 마포구 동교동"),
        Location(area: "서울 마포구 서교동"),
        Location(area: "서울 중구 봉래동2가"),
        Location(area: "서울 용산구 한남동"),
        
        Location(area: "서울 구로구 구로제3동"),
        Location(area: "서울 마포구 합정동"),
        Location(area: "서울 구로구 구로제4동"),
        Location(area: "서울 영등포구 문래동6가"),
        Location(area: "서울 영등포구 문래동5가"),
        Location(area: "서울 중구 남대문로5가"),
        Location(area: "서울 서초구 방배동"),
        Location(area: "서울 영등포구 양평동5가"),
        Location(area: "서울 금천구 독산제3동"),
        Location(area: "서울 영등포구 양평동2가"),
        
        Location(area: "서울 영등포구 양평동"),
        Location(area: "서울 중구 봉래동1가"),
        Location(area: "서울 서대문구 충정로3가"),
        Location(area: "서울 구로구 구로동"),
        Location(area: "서울 서대문구 합동"),
        Location(area: "서울 구로구 신도림동"),
        Location(area: "서울 중구 의주로2가"),
        Location(area: "서울 서대문구 대신동"),
        Location(area: "서울 중구 회현동"),
        Location(area: "서울 중구 남창동"),
        
        Location(area: "서울 중구 회현동1가"),
        Location(area: "서울 서초구 방배3동"),
        Location(area: "서울 서대문구 충현동"),
        Location(area: "서울 서대문구 신촌동"),
        Location(area: "서울 구로구 구로제2동"),
        Location(area: "서울 마포구 망원제1동"),
        Location(area: "서울 서대문구 미근동"),
        Location(area: "서울 중구 남대문로4가"),
        Location(area: "서울 중구 순화동"),
        Location(area: "서울 서초구 잠원동"),
    ]
}