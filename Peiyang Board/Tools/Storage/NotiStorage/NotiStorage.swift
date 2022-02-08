//
//  InfoStorage.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/17.
//

import Foundation
import SwiftUI

struct NotiStorage: Identifiable{
    @State public var checked: Bool
    @State public var stared: Bool
    var id: Int
    var title: String
    var main_text: String
    var publisher: String
    var publish_time: String
    var tags: [String]
    var img: Image
    
    init(){
        id = 1
        title = "今天不上班"
        main_text = "好累啊，早点睡觉吧，明天早点起床去图书馆继续卷，卷4⃣️你们"
        publisher = "我"
        tags = ["摸鱼","放假","打电动"]
        img = Image("user")
        publish_time = "12:00"
        checked = false
        stared = false
        
//        title = "今天上班去"
//        main_text = "昨天休息够了，今天上班去"
//        tags = ["上班","不休息了","卷四你们"]
//        publisher = "Looper"
//        img = Image("Looper")
//        publish_time = "00:00"
//        id = 1
    }
}

var notis = [NotiStorage](repeating: NotiStorage(), count: 7)

struct Landmark: Hashable, Codable, Identifiable{ //Identifiable Protocl

    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
//    var isFavorite: Bool

}
