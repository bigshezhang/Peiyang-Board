//
//  Notis_init.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/19.
//

import Foundation
import SwiftUI

func notis_init() {
    notis[1].title = "今天上班去"
    notis[1].main_text = "昨天休息够了，今天上班去"
    notis[1].tags = ["上班","不休息了","卷四你们"]
    notis[1].publisher = "Looper"
    notis[1].img = Image("Looper")
    notis[1].publish_time = "00:00"
    
    for i in 2...6{
        if i%2 == 0{
            notis[i] = notis[0]
        } else {
            notis[i] = notis[1]
        }
    }
}
