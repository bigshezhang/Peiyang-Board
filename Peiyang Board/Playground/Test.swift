//
//  Test.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/1/15.
//

import SwiftUI

struct Test: View {
    var body: some View {
        ZStack{
            Color.white
            Circle()
                .foregroundStyle(Color.secondary)
                .overlay(
                    Circle()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(Color.secondary)
                        .offset(y: -245))
                        
        }
    }
}

struct Test_Previews: PreviewProvider {
    static var previews: some View {
        Test()
    }
}
