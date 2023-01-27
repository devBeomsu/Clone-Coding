//
//  Product.swift
//  RCProject2
//
//  Created by Steve on 2022/10/31.
//

import Foundation

struct Product {
    let imageName: String
    let title: String
    let area: String
    let time: Int
    let price: Int
}

extension Product {
    static let list: [Product] = [
        Product(imageName: "animal1", title: "앵무새 팔아요", area: "상도동", time: 1, price: 999_999_999),
        Product(imageName: "animal2", title: "여우 팔아요", area: "노량진동", time: 1, price: 999_999_999),
        Product(imageName: "animal3", title: "토끼 팔아요", area: "노량진제1동", time: 1, price: 999_999_999),
        Product(imageName: "animal4", title: "북극곰 팔아요", area: "구로제3동", time: 2, price: 999_999_999),
        Product(imageName: "animal5", title: "너구리 팔아요", area: "여의동", time: 2, price: 999_999_999),
        Product(imageName: "animal6", title: "다람쥐 팔아요", area: "상도동", time: 2, price: 999_999_999),
        Product(imageName: "animal7", title: "햄스터 팔아요", area: "노량진제1동", time: 2, price: 999_999_999),
        Product(imageName: "animal8", title: "웰시코기 팔아요", area: "상도제1동", time: 2, price: 999_999_999),
        Product(imageName: "animal9", title: "고양이 팔아요", area: "노량진동", time: 3, price: 999_999_999),
        Product(imageName: "animal10", title: "퍼그 팔아요", area: "반포동", time: 3, price: 999_999_999),
        Product(imageName: "animal11", title: "다람쥐 팔아요", area: "대방동", time: 3, price: 999_999_999),
        Product(imageName: "animal12", title: "여우 팔파요", area: "신림동", time: 3, price: 999_999_999),
        
        Product(imageName: "animal13", title: "강아지 팔아요", area: "상도1동", time: 4, price: 999_999_999),
        Product(imageName: "animal14", title: "고양이 팔아요", area: "여의동", time: 7, price: 999_999_999),
        Product(imageName: "animal15", title: "팬더 팔아요", area: "반포동", time: 7, price: 999_999_999),
        Product(imageName: "animal16", title: "여우 팔파요", area: "본동", time: 7, price: 999_999_999),
        Product(imageName: "animal17", title: "돌고래 팔아요", area: "노량진동", time: 10, price: 999_999_999),
        Product(imageName: "animal18", title: "사자 팔아요", area: "여의동", time: 12, price: 999_999_999),
        Product(imageName: "animal19", title: "백호랑이 팔아요", area: "상도동", time: 13, price: 999_999_999),
        Product(imageName: "animal20", title: "독수리 팔아요", area: "노량진동", time: 13, price: 999_999_999),
        Product(imageName: "animal21", title: "고양이 팔아요", area: "신림동", time: 13, price: 999_999_999),
        Product(imageName: "animal22", title: "북극늑대 팔아요", area: "상도제1동", time: 18, price: 999_999_999),
        Product(imageName: "animal23", title: "해파리 팔아요", area: "반포동", time: 22, price: 999_999_999),
        Product(imageName: "animal24", title: "사슴 팔아요", area: "대방동", time: 49, price: 999_999_999),
    ]
}
