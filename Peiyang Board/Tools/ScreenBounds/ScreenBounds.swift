//
//  ScreenBounds.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/17.
//

import Foundation
import UIKit
 
//class MyScreenBounds{
//    var width = UIScreen.main.bounds.width
//    var height = UIScreen.main.bounds.height
//    
//    func ByWidth(Scale: Double) -> Double {
//        return width*Scale
//    }
//    
//    func ByHeight(Scale: Double) -> Double {
//        return height*Scale
//    }
//}
//
//var ScreenBounds = MyScreenBounds()

var ScreenWidth = UIScreen.main.bounds.width
var ScreenHeight = UIScreen.main.bounds.height

func ByWidth(Scale: Double) -> Double {
    return ScreenWidth*Scale/100.0
}

func ByHeight(Scale: Double) -> Double {
    return ScreenHeight*Scale/100.0
}
