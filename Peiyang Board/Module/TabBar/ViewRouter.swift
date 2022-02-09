//
//  ViewRouter.swift
//  Peiyang Board
//
//  Created by 李子鸣 on 2022/2/8.
//

import SwiftUI

class ViewRouter: ObservableObject {
    @Published var currentPage: Page = .NotDone
}

enum Page{
    case Done
    case NotDone
    case StarBox
    case Search
}

//struct ViewRouter_Previews: PreviewProvider {
//    static var previews: some View {
//        ViewRouter()
//    }
//}
