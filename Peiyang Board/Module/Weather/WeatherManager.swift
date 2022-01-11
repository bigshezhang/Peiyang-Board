//
//  WeatherManager.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/12.
//

import Foundation

class WeatherManager {
    let url = URL(string: "http://www.weather.com.cn/weather/101030100.shtml")
    
    func batch(completion: @escaping (Result<(Data, HTTPURLResponse), Network.Failure>) -> Void) {
        
    }
}
