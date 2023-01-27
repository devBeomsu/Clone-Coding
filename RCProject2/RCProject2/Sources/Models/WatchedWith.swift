//
//  WatchedWith.swift
//  RCProject2
//
//  Created by Steve on 2022/10/31.
//

import Foundation

struct WatchedWith {
    let productImage: String
    let productTitle: String
    let productPrice: Int
}

extension WatchedWith {
    static let list: [WatchedWith] = [
        WatchedWith(productImage: "animal3", productTitle: "토끼 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal2", productTitle: "여우 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal1", productTitle: "앵무새 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal21", productTitle: "고양이 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal22", productTitle: "북극늑대 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal23", productTitle: "해파리 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal7", productTitle: "햄스터 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal8", productTitle: "강아지 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal9", productTitle: "고양이 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal10", productTitle: "강아지 팔아요", productPrice: 999_999_999),
        
        WatchedWith(productImage: "animal11", productTitle: "다람쥐 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal12", productTitle: "여우 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal13", productTitle: "강아지 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal14", productTitle: "고양이 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal24", productTitle: "사슴 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal16", productTitle: "여우 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal17", productTitle: "돌고래 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal18", productTitle: "사자 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal19", productTitle: "백호랑이 팔아요", productPrice: 999_999_999),
        WatchedWith(productImage: "animal20", productTitle: "독수리 팔아요", productPrice: 999_999_999),
    ]
}
