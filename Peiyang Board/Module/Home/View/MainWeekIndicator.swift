//
//  MainWeekIndicator.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/17.
//

import SwiftUI

struct MainWeekIndicator: View {
    @State var IndicatedWeek = 1 //当前指向的星期
    var IndicatorCircle = [WeekIndicatorCircle](repeating: WeekIndicatorCircle(), count: 10)
    var body: some View {
        HStack{
            IndicatorCircle[1]
            IndicatorCircle[2]
            IndicatorCircle[3]
        }
    }
}

struct WeekIndicatorCircle: View{
    var weekOfYear = time.weekOfYear
    @State var radius = ByWidth(Scale: 20)
    var color = Color("Primary")
    var body: some View{
        Circle()
            .frame(width: radius, height: radius)
            .foregroundColor(color)
    }
}


struct MainWeekIndicator_Previews: PreviewProvider {
    static var previews: some View {
        MainWeekIndicator()
    }
}

enum WeekIndicatorColor {
    
}
