//
//  Weather.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/12.
//

import Foundation
import Combine

struct Weather: Codable {
    var wStatus: String = ""
    var wTempH: String = ""
    var wTempL: String = ""
    var weatherString: String = ""
    var weatherIconString1: String = ""
    var weatherIconString2: String = ""
    
    init() {
    }
    
}
